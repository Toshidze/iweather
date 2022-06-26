part of 'weather_bloc.dart';

abstract class WeatherState {
  const WeatherState();
}

///app have 5 states:

///1. 'WeatherInitial' - general state when the application is launched
class WeatherInitial extends WeatherState {}

///2. 'WeatherLoading' - the state when something is being loaded
class WeatherLoading extends WeatherState {}

///3. 'WeatherLoaded' - the state when weathe is loaded
class WeatherLoaded extends WeatherState {
  final MyWeather weather;

  const WeatherLoaded({required this.weather});
}

///4. 'ForecastLoaded' - the state when forecast is loaded
class ForecastLoaded extends WeatherState {
  final Forecast forecast;

  const ForecastLoaded({required this.forecast});
}

///5. 'WeatherLoadFailure' - the state when we got the error
class WeatherLoadFailure extends WeatherState {
  final String error;

  const WeatherLoadFailure({required this.error});
}
