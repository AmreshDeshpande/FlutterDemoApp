import 'package:flutter/material.dart';
import 'package:i_am_rich/constants.dart';

class IconCardContent extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconCardContent({@required this.iconData, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kNormalTextStyle,
        )
      ],
    );
  }
}
