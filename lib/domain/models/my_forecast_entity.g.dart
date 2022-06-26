// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_forecast_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      list: (json['list'] as List<dynamic>)
          .map((e) => MyWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'list': instance.list,
      'city': instance.city,
    };
