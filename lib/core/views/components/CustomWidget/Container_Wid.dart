import 'package:flutter/material.dart';

class ContainerWid extends StatelessWidget {
  ContainerWid({super.key, this.colorW = Colors.green, this.childW});

  Color? colorW = Colors.green;
  Widget? childW;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: colorW,
          boxShadow: [
            BoxShadow(offset: Offset(-2, 4), spreadRadius: 1, blurRadius: 7)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: childW,
    );
  }
}
