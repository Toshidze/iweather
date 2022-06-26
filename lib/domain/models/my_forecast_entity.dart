import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';

part 'my_forecast_entity.freezed.dart';
part 'my_forecast_entity.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    required List<MyWeather> list,
    required Map<String, dynamic> city,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
