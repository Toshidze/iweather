import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';
import 'package:weather_app/present/ui/widgets/my_button.dart';
import 'package:weather_app/present/ui/widgets/my_icon_button.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/utilities/forecast_helper.dart';
import 'package:weather_app/utilities/my_colors.dart';

///three-day weather forecast
///sort by temperature

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoaded) {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: MyGradientColors.kGradient,
                ),
              ),
              constraints: const BoxConstraints.expand(),
              child: SafeArea(
                child: BlocProvider(
                  create: (context) => WeatherBloc()
                    ..add(ForecastFetch(city: state.weather.name!)),
                  child: BlocBuilder<WeatherBloc, WeatherState>(
                    builder: (context, state) {
                      if (state is ForecastLoaded) {
                        final dayList =
                            ForecastHelper().dayList(state.forecast.list);
                        return Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Stack(
                                children: const [
                                  MyIconButton(
                                    route: '/city',
                                    icon: Icons.arrow_back_ios,
                                  ),
                                  SizedBox(
                                    height: 48,
                                    child: Center(
                                      child: MyTitles.appBarTitle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              state.forecast.city['name'],
                              style: textTheme.displayLarge
                                  ?.copyWith(color: Colors.white60),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: dayList.length,
                              itemBuilder: (context, index) {
                                return dayList[index];
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const MyButton(
                              route: '/',
                              buttonName: ButtonsText.changeCity,
                            ),
                          ],
                        );
                      } else if (state is WeatherLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
