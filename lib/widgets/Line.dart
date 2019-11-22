import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Divider(
            color: Colors.black,
            height: 36,
          )),
    );
  }
}
