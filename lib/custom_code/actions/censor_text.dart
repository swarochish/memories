// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> censorText(
  String authToken,
  String textToCheck,
) async {
  if (authToken == "" || textToCheck == "") {
    return "";
  }

  var url = "https://api.bayhouse.io/v1/util/filter-profanity/";

  // Create request
  var request = http.Request('POST', Uri.parse(url));

  // Add headers
  var headers = {
    "Authorization": authToken,
    "Content-Type": "application/json; charset=utf-8",
  };

  request.headers.addAll(headers);

  // Set body
  request.body = json.encode({"text": textToCheck});

  // Fetch Request
  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    final decodedJSON = json.decode(await response.stream.bytesToString());
    final cleanText = await decodedJSON["clean_text"];
    return cleanText;
  } else {
    debugPrint(response.reasonPhrase);
    return "";
  }
}
