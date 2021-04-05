import 'package:flutter/material.dart';

class DummyTab extends StatelessWidget {
  final String text;

  const DummyTab({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Text(text),
    );
  }
}
