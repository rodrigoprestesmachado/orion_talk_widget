library orion_talk_widget;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:orion_talk_widget/OrionTalkActions.dart';

/// # OrionTalkWidget
/// Implements the flutter user interface for Orion Talk Service
///
class OrionTalkWidget extends StatelessWidget {
  final TextEditingController _sendMessageController =
      new TextEditingController();

  OrionTalkWidget() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 400,
      //height: .0,
      decoration: BoxDecoration(color: Colors.lightBlue[50]),
      child: Center(
          child: Column(
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          new CupertinoButton(
            color: Colors.blue,
            onPressed: () {
              OrionTalkActions().onPressed(_sendMessageController.text);
            },
            child: Text("send"),
          ),
          new CupertinoTextField(
              placeholder: "message", controller: _sendMessageController),
          new TextMessageWidget("orion"),
        ],
      )),
    );
  }
}

/// # TextMessageWidget
/// Implements the container to wrapper the message
///
class TextMessageWidget extends StatelessWidget {
  String _text;

  TextMessageWidget(String text) {
    this._text = text;
  }

  String get text {
    return this._text;
  }

  void set text(String text) {
    this._text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this._text),
    );
  }
}
