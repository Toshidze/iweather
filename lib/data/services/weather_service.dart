import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:weather_app/domain/models/my_forecast_entity.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';
import 'package:weather_app/utilities/constants.dart';

class WeatherService {
  final apiKey = Settings.apiKey;

  Future<MyWeather> fetchCityWeather(String city) async {
    try {
      final resp = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric',
        ),
      );

      final decoded = jsonDecode(resp.body) as Map<String, dynamic>;

      switch (resp.statusCode) {
        case 200:
          final data = MyWeather.fromJson(decoded);
          return data;
        case 404:
          throw Exception(Attentions.cityError);
        case 400:
          throw Exception(Attentions.textFieldisEmpty);
        default:
          throw Exception(Attentions.dataError);
      }
    } on SocketException catch (_) {
      throw Exception(Attentions.dataError);
    }
  }

  Future<Forecast> fetchCityForecast(String city) async {
    try {
      final resp = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$apiKey&units=metric',
        ),
      );

      final decoded = jsonDecode(resp.body);
      switch (resp.statusCode) {
        case 200:
          final data = Forecast.fromJson(decoded);
          return data;
        case 404:
          throw Exception(Attentions.cityError);
        case 400:
          throw Exception(Attentions.textFieldisEmpty);
        default:
          throw Exception(Attentions.dataError);
      }
    } on SocketException catch (_) {
      throw Exception(Attentions.dataError);
    }
  }
}
