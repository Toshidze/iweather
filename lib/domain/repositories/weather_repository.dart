import 'package:weather_app/domain/models/my_forecast_entity.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';

abstract class WeatherRepository {
  Future<MyWeather> fetchCityWeather(String city);
  Future<Forecast> fetchCityForecast(String city);
}
