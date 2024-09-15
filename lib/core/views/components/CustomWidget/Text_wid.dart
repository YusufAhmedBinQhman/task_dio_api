import 'package:flutter/material.dart';

class TextWid extends StatelessWidget {
  TextWid({super.key, required this.Txt, this.fontWeight, this.fontSize});
  String Txt;
  double? fontSize = 18;
  FontWeight? fontWeight = FontWeight.bold;
  @override
  Widget build(BuildContext context) {
    return Text(
      Txt,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
    );
  }
}
