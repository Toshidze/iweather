// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods',
);

MyWeather _$MyWeatherFromJson(Map<String, dynamic> json) {
  return _MyWeather.fromJson(json);
}

/// @nodoc
mixin _$MyWeather {
  List<Map<String, dynamic>> get weather => throw _privateConstructorUsedError;
  Map<String, dynamic> get main => throw _privateConstructorUsedError;
  Map<String, dynamic> get wind => throw _privateConstructorUsedError;
  Map<String, dynamic> get clouds => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get dt_txt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyWeatherCopyWith<MyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWeatherCopyWith<$Res> {
  factory $MyWeatherCopyWith(MyWeather value, $Res Function(MyWeather) then) =
      _$MyWeatherCopyWithImpl<$Res>;
  $Res call({
    List<Map<String, dynamic>> weather,
    Map<String, dynamic> main,
    Map<String, dynamic> wind,
    Map<String, dynamic> clouds,
    String? name,
    String? dt_txt,
  });
}

/// @nodoc
class _$MyWeatherCopyWithImpl<$Res> implements $MyWeatherCopyWith<$Res> {
  final MyWeather _value;
  // ignore: unused_field
  final $Res Function(MyWeather) _then;
  _$MyWeatherCopyWithImpl(this._value, this._then);

  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? name = freezed,
    Object? dt_txt = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dt_txt: dt_txt == freezed
          ? _value.dt_txt
          : dt_txt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MyWeatherCopyWith<$Res> implements $MyWeatherCopyWith<$Res> {
  factory _$$_MyWeatherCopyWith(
    _$_MyWeather value,
    $Res Function(_$_MyWeather) then,
  ) = __$$_MyWeatherCopyWithImpl<$Res>;
  @override
  $Res call({
    List<Map<String, dynamic>> weather,
    Map<String, dynamic> main,
    Map<String, dynamic> wind,
    Map<String, dynamic> clouds,
    String? name,
    String? dt_txt,
  });
}

/// @nodoc
class __$$_MyWeatherCopyWithImpl<$Res> extends _$MyWeatherCopyWithImpl<$Res>
    implements _$$_MyWeatherCopyWith<$Res> {
  __$$_MyWeatherCopyWithImpl(
    _$_MyWeather _value,
    $Res Function(_$_MyWeather) _then,
  ) : super(_value, (v) => _then(v as _$_MyWeather));

  @override
  _$_MyWeather get _value => super._value as _$_MyWeather;

  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? name = freezed,
    Object? dt_txt = freezed,
  }) {
    return _then(_$_MyWeather(
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      main: main == freezed
          ? _value._main
          : main // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      wind: wind == freezed
          ? _value._wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      clouds: clouds == freezed
          ? _value._clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dt_txt: dt_txt == freezed
          ? _value.dt_txt
          : dt_txt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyWeather implements _MyWeather {
  _$_MyWeather({
    required final List<Map<String, dynamic>> weather,
    required final Map<String, dynamic> main,
    required final Map<String, dynamic> wind,
    required final Map<String, dynamic> clouds,
    this.name,
    this.dt_txt,
  })  : _weather = weather,
        _main = main,
        _wind = wind,
        _clouds = clouds;

  factory _$_MyWeather.fromJson(Map<String, dynamic> json) =>
      _$$_MyWeatherFromJson(json);

  final List<Map<String, dynamic>> _weather;
  @override
  List<Map<String, dynamic>> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  final Map<String, dynamic> _main;
  @override
  Map<String, dynamic> get main {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_main);
  }

  final Map<String, dynamic> _wind;
  @override
  Map<String, dynamic> get wind {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_wind);
  }

  final Map<String, dynamic> _clouds;
  @override
  Map<String, dynamic> get clouds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clouds);
  }

  @override
  final String? name;
  @override
  final String? dt_txt;

  @override
  String toString() {
    return 'MyWeather(weather: $weather, main: $main, wind: $wind, clouds: $clouds, name: $name, dt_txt: $dt_txt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyWeather &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other._main, _main) &&
            const DeepCollectionEquality().equals(other._wind, _wind) &&
            const DeepCollectionEquality().equals(other._clouds, _clouds) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.dt_txt, dt_txt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_weather),
        const DeepCollectionEquality().hash(_main),
        const DeepCollectionEquality().hash(_wind),
        const DeepCollectionEquality().hash(_clouds),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(dt_txt),
      );

  @JsonKey(ignore: true)
  @override
  _$$_MyWeatherCopyWith<_$_MyWeather> get copyWith =>
      __$$_MyWeatherCopyWithImpl<_$_MyWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyWeatherToJson(this);
  }
}

abstract class _MyWeather implements MyWeather {
  factory _MyWeather({
    required final List<Map<String, dynamic>> weather,
    required final Map<String, dynamic> main,
    required final Map<String, dynamic> wind,
    required final Map<String, dynamic> clouds,
    final String? name,
    final String? dt_txt,
  }) = _$_MyWeather;

  factory _MyWeather.fromJson(Map<String, dynamic> json) =
      _$_MyWeather.fromJson;

  @override
  List<Map<String, dynamic>> get weather => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get main => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get wind => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get clouds => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get dt_txt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyWeatherCopyWith<_$_MyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
