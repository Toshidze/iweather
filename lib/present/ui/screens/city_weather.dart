import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';
import 'package:weather_app/present/ui/widgets/my_icon_button.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/utilities/icon_helper.dart';
import 'package:weather_app/utilities/my_colors.dart';

///second screen with basic parameters temperature,humidity and wind speed
///and some advice on what to wear

class CityWeather extends StatelessWidget {
  const CityWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: MyGradientColors.kGradientRevers,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherLoaded) {
                final double temp = state.weather.main['temp'];
                final int humidity = state.weather.main['humidity'];
                final num speed = state.weather.wind['speed'];
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const MyIconButton(
                            route: '/',
                            icon: Icons.arrow_back_ios,
                          ),
                          Text(
                            state.weather.name ?? '',
                            style: textTheme.headline2,
                          ),
                          const MyIconButton(
                            route: '/desc',
                            icon: Icons.info,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          temp.toInt().toString() + Units.celsius,
                          style: textTheme.displayLarge
                              ?.copyWith(color: Colors.white60),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          IconHelper.getWeatherIcon(
                            state.weather.weather.first['id'],
                          ),
                          style: const TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      IconHelper.getMessage(
                        temp.toInt(),
                      ),
                      style: textTheme.caption,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 200,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyTitles.humidity,
                                style: textTheme.headline6,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  humidity.toString() + Units.percent,
                                  style: textTheme.headline5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyTitles.speedWind,
                                style: textTheme.headline6,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  speed.round().toString() + Units.ms,
                                  style: textTheme.headline5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
