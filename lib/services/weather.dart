import 'NetworkHelper.dart';
import 'package:i_am_rich/models/location.dart';

class WeatherModel {

   var apikey = "a69504fdf9d4a1178b617e27e43b1fec";
   var weatherBaseUrl = "https://api.openweathermap.org/data/2.5/weather";


   Future<dynamic> getWeatherDataForCity(cityName) async{
     NetworkHelper networkHelper = NetworkHelper('$weatherBaseUrl?q=$cityName&appid=$apikey&units=metric');
     var weatherData = await networkHelper.getData();
     return weatherData;
   }

  Future<dynamic> getWeatherData() async{
    Location location = Location();
    await location.getUserLocation();

    print("location info" + location.latitude.toString() + ' ' + location.longitude.toString());
    NetworkHelper networkHelper = NetworkHelper('$weatherBaseUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apikey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
