import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onButtonClick;

  RoundedIconButton(this.iconData, this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      child: Icon(iconData),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      onPressed: () {
        onButtonClick();
      },
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
