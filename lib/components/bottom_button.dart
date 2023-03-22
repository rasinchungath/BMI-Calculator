import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.text, required this.ontap});
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: bottomContainerColor,
        margin: const EdgeInsets.only(
          top: 15,
        ),
        height: bottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: largeButtonStyle,
          ),
        ),
      ),
    );
  }
}
