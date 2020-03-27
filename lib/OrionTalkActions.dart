library orion_talk_widget;

import 'dart:developer';

import 'package:http/http.dart' as http;

class OrionTalkActions {
  static final String URL =
      "http://localhost:9080/orion-talk-service/orion-talk/service/";

  Future<http.Response> onPressed(String text) async {
    log(text);
    return await http.get(OrionTalkActions.URL + "create/" + text);
  }
}
