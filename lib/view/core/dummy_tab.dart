import 'package:flutter/material.dart';

class DummyTab extends StatelessWidget {
  final String? text;

  const DummyTab({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Page\n" + text!,
        textAlign: TextAlign.center,
      ),
    );
  }
}
