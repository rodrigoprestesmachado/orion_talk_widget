library orion_talk_widget;

import 'dart:developer';

import 'package:http/http.dart' as http;

///  # OrionTalkActions
///  This class implements the actions from Orion Talk Widget
class OrionTalkActions {
  /// The Orion Talk Service API URL
  // ignore: non_constant_identifier_names
  static final String URL =
      "http://localhost:9080/orion-talk-service/orion-talk/service/";

  /// Implements the send message action from the button
  Future<http.Response> onPressed(String text) async {
    log(text);
    return await http.get(OrionTalkActions.URL + "create/" + text);
  }
}
