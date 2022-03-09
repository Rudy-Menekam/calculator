import 'package:calculator/right-hand-buttons.dart';
import 'package:calculator/top-right-buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import 'custom-button.dart';

class EquationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          //padding: EdgeInsets.only(top: statusBarHeight * 0.8),
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xff6A818F), Color(0xff24495E)],
              center: Alignment(0.6, -0.3),
              focal: Alignment(0.3, -0.1),
              focalRadius: 1.0,
            ),
          ),
        ),
        Container(
          width: 500,
          height: 500,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0), topRight: Radius.circular(50)),
            gradient: RadialGradient(
              colors: [Color(0xff24495E), Color(0xff6A818F)],
            ),
          ),
          child: Column(
            children: [
              FlutterToggleTab(
                width: 40,
                borderRadius: 15,
                // initialIndex: 0,
                selectedTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                labels: const ["", ""],
                icons: const [Icons.person, Icons.pregnant_woman],
                selectedLabelIndex: (index) {
                  print("Selected Index $index");
                },
                selectedIndex: 0,
              ),
            ],
          ),
        ),
        Container(
          width: 500,
          height: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0), topRight: Radius.circular(50)),
            gradient: RadialGradient(
              colors: [Color(0xffffffff), Color(0xffF1F2F3)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex: 1, child: CustomButton('calc')),
                          Flexible(flex: 1, child: CustomButton('Int')),
                          Flexible(flex: 1, child: CustomButton('x^-1')),
                          Flexible(flex: 1, child: CustomButton('x^3')),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex: 1, child: CustomButton('a^(b/c)')),
                          Flexible(flex: 1, child: CustomButton('sqrt')),
                          Flexible(flex: 1, child: CustomButton('x^1')),
                          Flexible(flex: 1, child: CustomButton('^')),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex: 1, child: CustomButton('log')),
                          Flexible(flex: 1, child: CustomButton('ln')),
                          Flexible(flex: 1, child: CustomButton('(-)')),
                          Flexible(flex: 1, child: CustomButton('.""')),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex: 1, child: CustomButton('hyp')),
                          Flexible(flex: 1, child: CustomButton('sin')),
                          Flexible(flex: 1, child: CustomButton('cos')),
                          Flexible(flex: 1, child: CustomButton('tan')),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex: 1, child: CustomButton('RCL')),
                          Flexible(flex: 1, child: CustomButton('Eng')),
                          Flexible(flex: 1, child: CustomButton('Exp')),
                          Flexible(flex: 1, child: CustomButton('M+')),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
