import 'package:flutter/material.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';

//display errors by Snackbar
class MySnackBar {
  void mySnackBar(BuildContext context, WeatherLoadFailure state) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black45,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height / 2,
          right: 20,
          left: 20,
        ),
        padding: const EdgeInsets.all(20),
        elevation: 20,
        behavior: SnackBarBehavior.floating,
        content: Text(
          state.error.substring(11),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
