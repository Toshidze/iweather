import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/present/ui/screens/city_weather.dart';
import 'package:weather_app/present/ui/screens/description_screen.dart';
import 'package:weather_app/present/ui/screens/home_page.dart';
import 'package:weather_app/utilities/my_theme.dart';

//navigation to use declarative GoRouter package

class WeatherRouter extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/city',
        builder: (context, state) => const CityWeather(),
      ),
      GoRoute(
        path: '/desc',
        builder: (context, state) => const DescriptionScreen(),
      ),
    ],
  );

  WeatherRouter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: MyTheme().theme,
      );
}
