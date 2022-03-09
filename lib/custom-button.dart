import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 24.0),
      ),
    );
  }
}
