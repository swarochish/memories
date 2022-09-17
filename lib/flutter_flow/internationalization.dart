import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'te', 'hi'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? teText = '',
    String? hiText = '',
  }) =>
      [enText, teText, hiText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Landing
  {
    'ooxbis2j': {
      'en': 'Gather Moments to create Memories',
      'hi': '',
      'te': '',
    },
    '1ftuft2h': {
      'en': 'Create a collective memory based on everyone\'s experience',
      'hi': '',
      'te': '',
    },
    'pa7hy6z7': {
      'en': 'Context',
      'hi': '',
      'te': '',
    },
    'iy22xtnr': {
      'en':
          'Give basic details regarding a person or event that you are gathering moments about',
      'hi': '',
      'te': '',
    },
    'kzyfeeyl': {
      'en': 'Share it with near & dear',
      'hi': '',
      'te': '',
    },
    '751r95tt': {
      'en': 'Invite people to share their moments & experiences',
      'hi': '',
      'te': '',
    },
    '0t26hi7b': {
      'en': 'Continue',
      'hi': '',
      'te': '',
    },
  },
  // Login
  {
    'z0l7s5k3': {
      'en': 'Phone Sign In',
      'hi': '',
      'te': '',
    },
    'obcqv4yi': {
      'en': 'Type in your phone number below to register.',
      'hi': '',
      'te': '',
    },
    'l5ss4g25': {
      'en': 'Your Phone Number',
      'hi': '',
      'te': '',
    },
    'z7t2cdrd': {
      'en': 'Please enter a valid number...',
      'hi': '',
      'te': '',
    },
    'xfq77vr2': {
      'en': 'Sign In with Phone',
      'hi': '',
      'te': '',
    },
    'yc0rkq8g': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // VerifySMS
  {
    'dcfdfmth': {
      'en': 'Phone Sign In',
      'hi': '',
      'te': '',
    },
    'yltgkwcs': {
      'en': 'Type in your Onetime Password',
      'hi': '',
      'te': '',
    },
    '4ux0074b': {
      'en': 'OTP',
      'hi': '',
      'te': '',
    },
    'nqahvrii': {
      'en': 'Please enter yout OTP',
      'hi': '',
      'te': '',
    },
    'ez1dq3fg': {
      'en': 'Submit',
      'hi': '',
      'te': '',
    },
    '1kl2tgf6': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // Home
  {
    'gczvsxqu': {
      'en': 'Welcome',
      'hi': 'स्वागत',
      'te': 'స్వాగతం',
    },
    'jtdrxih2': {
      'en': 'Checkout the memories below',
      'hi': 'नीचे दी गई यादों की जाँच करें',
      'te': 'దిగువ జ్ఞాపకాలను తనిఖీ చేయండి',
    },
    'ykq96787': {
      'en': 'Search memories...',
      'hi': '',
      'te': '',
    },
    'a8e6d6gs': {
      'en': 'Created by you',
      'hi': 'आपके द्वारा बनाया गया',
      'te': 'మీరు సృష్టించినది',
    },
    'igzm1o7w': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    '8dekhi5f': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    '8vvutyyv': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    'rn3ekbmm': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    '9huwmvgr': {
      'en': 'Received Memories',
      'hi': 'प्राप्त यादें',
      'te': 'జ్ఞాపకాలను అందుకున్నారు',
    },
    '6xoy3efk': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    '76jjq0np': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'rj30w5fb': {
      'en': 'Username',
      'hi': '',
      'te': '',
    },
    '2h4yl94o': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    '9jglli4n': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'b1k7o1f5': {
      'en': 'Username',
      'hi': '',
      'te': '',
    },
    '8qbjixbs': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'wiz0rsba': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    '2etlir18': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'fj11cccl': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'qn9dd2aa': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // MemoryDetailsMine
  {
    'ee2ksonf': {
      'en': 'Status',
      'hi': '',
      'te': '',
    },
    '34krpuit': {
      'en': 'Status',
      'hi': '',
      'te': '',
    },
    'cr30e68s': {
      'en': 'Audience',
      'hi': '',
      'te': '',
    },
    'e2f8y26n': {
      'en': 'Responses',
      'hi': '',
      'te': '',
    },
    'yzxwag0q': {
      'en': 'Publish',
      'hi': '',
      'te': '',
    },
    '4ubquq7x': {
      'en': 'Edit',
      'hi': '',
      'te': '',
    },
    'gn91wi6l': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'i7nlejrr': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // MemoryDetailsRcvd
  {
    'p5c5vn0o': {
      'en': 'Campaign Creator',
      'hi': '',
      'te': '',
    },
    '00mv1esf': {
      'en': 'Respond',
      'hi': '',
      'te': '',
    },
    'e7dqv65d': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // memorywithMoments
  {
    'r2cq4d14': {
      'en': 'Track',
      'hi': '',
      'te': '',
    },
    'hkuyknje': {
      'en': 'Timeline',
      'hi': '',
      'te': '',
    },
    'c8i09w8h': {
      'en': '2h',
      'hi': '',
      'te': '',
    },
    'envz3eg4': {
      'en': 'Responded',
      'hi': '',
      'te': '',
    },
    'frmt885a': {
      'en': '4 hour session',
      'hi': '',
      'te': '',
    },
    'a0r1mm4h': {
      'en': 'Scene Setup 101',
      'hi': '',
      'te': '',
    },
    '7877w3yz': {
      'en': '\$500',
      'hi': '',
      'te': '',
    },
    'kyqm5n9v': {
      'en': '2 Week Intensive',
      'hi': '',
      'te': '',
    },
    'sn4ytqnf': {
      'en': 'Adventure Photography',
      'hi': '',
      'te': '',
    },
    '8ril99zq': {
      'en': '\$2,000',
      'hi': '',
      'te': '',
    },
    '1dgd2rlb': {
      'en': 'Portfolio',
      'hi': '',
      'te': '',
    },
    'rxuvrrm5': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // CreateMemory
  {
    'vlukil6u': {
      'en': 'Create Memory',
      'hi': '',
      'te': '',
    },
    '3ii0y9ki': {
      'en': 'Memory Name',
      'hi': 'स्मृति नाम',
      'te': 'మెమరీ పేరు',
    },
    'ssiq9lt6': {
      'en': 'Description',
      'hi': '',
      'te': '',
    },
    'q7bm928k': {
      'en': 'Enter memory details here...',
      'hi': '',
      'te': '',
    },
    'ouyqzmm6': {
      'en': 'End Date',
      'hi': '',
      'te': '',
    },
    'ylgtrfza': {
      'en': 'Select Date',
      'hi': '',
      'te': '',
    },
    'tbeqbhmu': {
      'en': 'Choose Reponders',
      'hi': '',
      'te': '',
    },
    '7r5ey0s8': {
      'en': 'Add Media',
      'hi': '',
      'te': '',
    },
    'qo0idg4e': {
      'en': 'Publish',
      'hi': '',
      'te': '',
    },
    '2gejiry0': {
      'en': 'Save',
      'hi': '',
      'te': '',
    },
  },
  // CreateMoment
  {
    't6ttafx2': {
      'en': 'Create Moment',
      'hi': '',
      'te': '',
    },
    'uzqi6bb6': {
      'en': 'Moment Details',
      'hi': '',
      'te': '',
    },
    'tls1ylgo': {
      'en': 'Enter moment details here...',
      'hi': '',
      'te': '',
    },
    'wugmfk2g': {
      'en': 'Add Media',
      'hi': '',
      'te': '',
    },
    'yo99fxpy': {
      'en': 'Memory Date',
      'hi': '',
      'te': '',
    },
    'qt72jzvy': {
      'en': 'Select Date',
      'hi': '',
      'te': '',
    },
    '7de96jgd': {
      'en': 'Publish',
      'hi': '',
      'te': '',
    },
    '9i76rr3k': {
      'en': 'Save',
      'hi': '',
      'te': '',
    },
  },
  // moment_detail1
  {
    '36gb4l7t': {
      'en': 'Moment',
      'hi': '',
      'te': '',
    },
    'y18ug798': {
      'en': 'Images',
      'hi': '',
      'te': '',
    },
    'xryvjha6': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    '1nt6crwc': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    'g9ohokmb': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    'nstm8ow4': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    'mpvwbmcb': {
      'en': 'Video',
      'hi': '',
      'te': '',
    },
    'frmroqcz': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // SelectAudience
  {
    '5lgyya1j': {
      'en': 'Add Members',
      'hi': '',
      'te': '',
    },
    'bxty8mv1': {
      'en': 'Search members...',
      'hi': '',
      'te': '',
    },
    'yqoxwwfe': {
      'en': 'Members in Project',
      'hi': '',
      'te': '',
    },
    'zgn8sbbr': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    'cgo0pib3': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    'qmm49cc1': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    'zd2oxpkd': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    'ajxj4t5x': {
      'en': 'UserName',
      'hi': '',
      'te': '',
    },
    'ut6702ij': {
      'en': 'Remove',
      'hi': '',
      'te': '',
    },
    '6qh8uwpg': {
      'en': 'Add Members',
      'hi': '',
      'te': '',
    },
    'jwygvmuv': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'iqr5ci3c': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'j7gj4nc7': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'cvc9ikz9': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    '4t04hyz9': {
      'en': 'Username',
      'hi': '',
      'te': '',
    },
    'lzl1se7o': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'beg9cajz': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    '93v61mwj': {
      'en': 'Username',
      'hi': '',
      'te': '',
    },
    'ihms0aw1': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'xe7911i0': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    '83hqjt07': {
      'en': 'user@domainname.com',
      'hi': '',
      'te': '',
    },
    'rpn249jk': {
      'en': 'View',
      'hi': '',
      'te': '',
    },
    'qz4zij3z': {
      'en': 'Home',
      'hi': '',
      'te': '',
    },
  },
  // Miscellaneous
  {
    '1r2zsz9l': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '4o97r9i0': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'w5qyc4x1': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'nfbo0uuz': {
      'en': 'This would be used to enable you to record a memory',
      'hi': '',
      'te': '',
    },
    'e8iaz41z': {
      'en': 'This would be used to enable you to record a memory',
      'hi': '',
      'te': '',
    },
    '2arn2gj8': {
      'en': 'Access specific photos related to your memory',
      'hi': '',
      'te': '',
    },
    'w442r4jm': {
      'en': 'This would be used to notify of a pending memory',
      'hi': '',
      'te': '',
    },
    'h3kjr28b': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '270yggkb': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '7dzu62g7': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'p0pf20im': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '59j6gr2k': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'k98e3t5l': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'grn2zi6u': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '5q57wgr5': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '1ntodc8k': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'xlzsh3gw': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '38ag4gyo': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'nz833zx2': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'vuqct0ua': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'h9ruoek2': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'fieruyyz': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '5tutdaz6': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'qo0ii4e5': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'i25s58sd': {
      'en': '',
      'hi': '',
      'te': '',
    },
    'wre0k3xk': {
      'en': '',
      'hi': '',
      'te': '',
    },
    '0limu3mt': {
      'en': '',
      'hi': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
