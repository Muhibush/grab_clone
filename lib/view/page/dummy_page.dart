import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  final String text;

  const DummyPage({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}
