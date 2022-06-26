import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';
import 'package:weather_app/present/ui/widgets/my_snack_bar.dart';
import 'package:weather_app/present/ui/widgets/my_textfield_button.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/utilities/my_colors.dart';

//first screen with text form for write City

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: MyGradientColors.kGradient,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: BlocConsumer<WeatherBloc, WeatherState>(
            listener: (context, state) {
              if (state is WeatherLoadFailure) {
                MySnackBar().mySnackBar(context, state);
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: MyTextFieldButton(),
                  ),
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Text(
                      MyTitles.appName,
                      style: textTheme.headline1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
