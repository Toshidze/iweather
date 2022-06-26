// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyWeather _$$_MyWeatherFromJson(Map<String, dynamic> json) => _$_MyWeather(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      main: json['main'] as Map<String, dynamic>,
      wind: json['wind'] as Map<String, dynamic>,
      clouds: json['clouds'] as Map<String, dynamic>,
      name: json['name'] as String?,
      dt_txt: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$$_MyWeatherToJson(_$_MyWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'name': instance.name,
      'dt_txt': instance.dt_txt,
    };
