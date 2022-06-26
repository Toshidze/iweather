part of 'weather_bloc.dart';

abstract class WeatherEvent {}

///app have 2 general events fetch weather and fetch forecast

class WeatherFetch extends WeatherEvent {
  final String city;

  WeatherFetch({required this.city});
}

class ForecastFetch extends WeatherEvent {
  final String city;

  ForecastFetch({required this.city});
}
