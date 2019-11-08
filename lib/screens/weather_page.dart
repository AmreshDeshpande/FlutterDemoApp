import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:i_am_rich/models/location.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Position position;

  void getUserLocation() async {
    Location location = Location();
    await location.getUserLocation();
    print(location.longitude.toString() + ' ' + location.longitude.toString());
    getWeatherData();
  }

  void getWeatherData() async {
    http.Response response = await http.get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      double temperature = decodedData['main']['temp'];
      String condition = decodedData['weather'][0]['description'];
      String city = decodedData['name'];

      print(temperature.toString() + ' ' + condition + ' ' + city);
    } else {
      print(response.body);
    }
  }

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );
  }
}
