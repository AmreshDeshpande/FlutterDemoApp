import 'package:flutter/material.dart';
import 'package:i_am_rich/components/bottom_button.dart';
import 'package:i_am_rich/components/rounded_card.dart';
import 'package:i_am_rich/constants.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.weightRemark, @required this.bmi, @required this.advice});

  final String weightRemark;
  final String bmi;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            style: kLargeTextStyle,
          ),
          Expanded(
            child: RoundedCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(weightRemark, style: kResultTextStyle),
                  Text(
                    bmi.toString(),
                    style: kBMITextStyle,
                  ),
                  Text(advice, style: kNormalTextStyle)
                ],
              ),
            ),
          ),
          BottomButton('Re-Calculate BMI', () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
