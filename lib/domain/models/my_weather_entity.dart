import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_weather_entity.freezed.dart';
part 'my_weather_entity.g.dart';

@freezed
abstract class MyWeather with _$MyWeather {
  factory MyWeather({
    required List<Map<String, dynamic>> weather,
    required Map<String, dynamic> main,
    required Map<String, dynamic> wind,
    required Map<String, dynamic> clouds,
    String? name,
    String? dt_txt,
  }) = _MyWeather;

  factory MyWeather.fromJson(Map<String, dynamic> json) =>
      _$MyWeatherFromJson(json);
}
