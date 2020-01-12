import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:i_am_rich/services/weather.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  void getUserLocation() async {
     WeatherModel weatherModel =  WeatherModel();
     var weatherData = await weatherModel.getWeatherData();
    Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen(weatherData);
      }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitDoubleBounce(
            color: Colors.white,
            size: 100.0
          )
        ],
      ),
    );
  }
}
