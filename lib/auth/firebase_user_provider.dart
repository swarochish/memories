import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TheirMemoriesFirebaseUser {
  TheirMemoriesFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TheirMemoriesFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TheirMemoriesFirebaseUser> theirMemoriesFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TheirMemoriesFirebaseUser>(
            (user) => currentUser = TheirMemoriesFirebaseUser(user));
