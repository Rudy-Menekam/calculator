import 'package:flutter/material.dart';

class RightHandButton extends StatelessWidget {
  String text;

  RightHandButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Color(0xff09689D)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 36.0),
      ),
    );
  }
}
