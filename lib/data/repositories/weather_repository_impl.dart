import 'package:weather_app/data/services/weather_service.dart';
import 'package:weather_app/domain/models/my_forecast_entity.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherService weatherService = WeatherService();

  @override
  Future<MyWeather> fetchCityWeather(String city) async {
    return weatherService.fetchCityWeather(city);
  }

  @override
  Future<Forecast> fetchCityForecast(String city) async {
    return weatherService.fetchCityForecast(city);
  }
}
