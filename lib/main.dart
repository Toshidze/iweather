import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/navigation/weather_router.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepositoryImpl(),
      child: BlocProvider(
        lazy: false,
        create: (context) => WeatherBloc(),
        child: WeatherRouter(),
      ),
    );
  }
}
