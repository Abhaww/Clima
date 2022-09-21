import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '4e0064c1ae2602ec54b8522bc06e8845';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async{
    var cityURL = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';
    LocationHelper locationHelper = LocationHelper(url: cityURL);
    var weatherData = await locationHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location myLocation = Location();
    await myLocation.getCurrentPosition();
    LocationHelper locationHelper = LocationHelper(
        url:
            '$openWeatherMapURL?lat=${myLocation.latitude}&lon=${myLocation.longitude}&appid=$apiKey&units=metric');
    var weatherData = await locationHelper.getData();
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
