import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {this.data, this.color, this.alignment, this.fontsize, Key key})
      : super(key: key);

  final String data;
  final TextAlign alignment;
  final double fontsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data != '' ? data : 'Unavailable!',
      textAlign: alignment != null ? alignment : TextAlign.left,
      style: new TextStyle(
          fontSize: fontsize != null ? fontsize : 16,
          color: color != null ? color : Colors.black),
    );
  }
}
