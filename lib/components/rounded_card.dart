import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onCardClick;

  RoundedCard({@required this.color, this.cardChild, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick();
      },
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
