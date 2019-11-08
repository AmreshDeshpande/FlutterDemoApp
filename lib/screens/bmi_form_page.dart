import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i_am_rich/components/bottom_button.dart';
import 'package:i_am_rich/components/icon_card_content.dart';
import 'package:i_am_rich/components/rounded_card.dart';
import 'package:i_am_rich/components/rounded_icon_button.dart';
import 'package:i_am_rich/constants.dart';
import 'package:i_am_rich/models/bmi_calculator.dart';
import 'package:i_am_rich/screens/bmi_result_page.dart';

enum Gender { Male, Female }

class BMIFormPage extends StatefulWidget {
  @override
  _BMIFormPageState createState() => _BMIFormPageState();
}

class _BMIFormPageState extends State<BMIFormPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: RoundedCard(
                      onCardClick: () {
                        setState(() {
                          selectedGender = Gender.Male;
                        });
                      },
                      color: selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconCardContent(
                          iconData: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                  Expanded(
                      child: RoundedCard(
                    onCardClick: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconCardContent(
                        iconData: FontAwesomeIcons.venus, text: 'FEMALE'),
                  )),
                ],
              )),
          Expanded(
            flex: 3,
            child: RoundedCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Height'),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kLargeTextStyle),
                        Text('cm', style: kNormalTextStyle),
                      ]),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: RoundedCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kNormalTextStyle,
                        ),
                        Text(weight.toString(), style: kLargeTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedIconButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                weight++;
                              });
                            }),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                    child: RoundedCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: kNormalTextStyle,
                          ),
                          Text(age.toString(), style: kLargeTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundedIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          BottomButton('Calculate BMI', () {
            BMICalculator bmiCalculator =
                BMICalculator(height: height, weight: weight);
            String bmi = bmiCalculator.calculateBMI().toString();
            String advice = bmiCalculator.getAdvice();
            String weightRemark = bmiCalculator.getWightRemark();

            BMIResult bmiResult =
                BMIResult(weightRemark: weightRemark, bmi: bmi, advice: advice);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => bmiResult));
          })
        ],
      ),
    );
  }
}
