import 'package:flutter/material.dart';

const Color kActiveCardColor = Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111823);
const double kBottomBarHeight = 80.0;
const TextStyle kLargeTextStyle =
    TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white);
const TextStyle kNormalTextStyle = TextStyle(color: Colors.white);

const TextStyle kResultTextStyle = TextStyle(
    fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF24D876));

const TextStyle kBMITextStyle =
    TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white);


const kTempTextStyle = TextStyle(
    fontFamily: 'Spartan MB',
    fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
    fontFamily: 'Spartan MB',
    fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
    fontSize: 100.0,
);


const kInputDecoration = InputDecoration(
filled: true,
fillColor: Colors.white,
icon: Icon(Icons.location_city,color: Colors.white),
hintText: "Enter city name",
hintStyle: TextStyle(
color: Colors.grey
),border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(10.0)),
borderSide: BorderSide.none
));