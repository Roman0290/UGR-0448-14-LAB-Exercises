import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherData {
  final String temperature;
  final String weatherCondition;

  WeatherData(this.temperature, this.weatherCondition);

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    String temperature = json['main']['temp'].toString();
    String weatherCondition = json['weather'][0]['description'];
    return WeatherData(temperature, weatherCondition);
  }
}

Future<WeatherData> fetchWeatherData(String apiKey, String city) async {
  String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey";
  var response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    Map<String, dynamic> json = jsonDecode(response.body);
    return WeatherData.fromJson(json);
  } else {
    throw Exception("Failed to fetch weather data. Error: ${response.statusCode}");
  }
}

void main() async {
  String apiKey = "your_api_key";
  String city = "New York";

  print("Fetching weather data...");
  try {
    WeatherData weatherData = await fetchWeatherData(apiKey, city);
    print("Temperature: ${weatherData.temperature}°C");
    print("Weather Condition: ${weatherData.weatherCondition}");
  } catch (e) {
    print("Error: $e");
  }
}