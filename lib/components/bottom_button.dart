import 'package:flutter/material.dart';
import 'package:i_am_rich/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onButtonClick;

  BottomButton(this.text, this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonClick,
      child: Container(
        color: Color(0xFFEB1555),
        child: Center(child: Text(text)),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}
