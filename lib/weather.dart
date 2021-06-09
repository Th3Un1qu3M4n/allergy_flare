import 'package:weather_app/location.dart';
import 'package:weather_app/networking.dart';

const api = 'aac6293931e3a506a9e7291eac304523';

class Weather {
  Future<dynamic> cityWeather(String cityName) async {
    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$api&units=metric');
    var weatherData = await network.getData();
    return weatherData;
  }

  Future<dynamic> weatherData() async {
    Location location = Location();
    await location.getCurrentLocation();

    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$api&units=metric');
    var weatherData = await network.getData();
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
