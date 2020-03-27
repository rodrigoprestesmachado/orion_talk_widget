# Examples

The Orion Talk Widget implements a container with Cupertino Flutter UI components.
The below example is Flutter App where the Orion Talk Widget class is used. 
Note in this examples that OrionTalkWidget object is used as a child of CupertinoPageScaffold.
Thus, the Orion Talk Widget can be used to compose a UI of an APP.

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:orion_talk_widget/OrionTalkWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: BaseLayout(),
      theme: CupertinoThemeData(primaryColor: Colors.green),
    );
  }
}

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Orion Talk"),
        ),
        child: OrionTalkWidget());
  }
}
```