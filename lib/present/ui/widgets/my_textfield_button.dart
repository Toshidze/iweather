import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/present/bloc/weather_bloc.dart';
import 'package:weather_app/utilities/constants.dart';

class MyTextFieldButton extends StatefulWidget {
  const MyTextFieldButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextFieldButton> createState() => _MyTextFieldButtonState();
}

class _MyTextFieldButtonState extends State<MyTextFieldButton> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          controller: _textController,
          decoration: const InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            hintText: MyTitles.hintText,
            helperText: MyTitles.helperText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white60,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          //listen state and switch to another screen as soon as the state changes
          child: BlocConsumer<WeatherBloc, WeatherState>(
            listener: (context, state) {
              if (state is WeatherLoaded) {
                context.go('/city');
              }
            },
            builder: (context, state) {
              return BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  return TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.white.withOpacity(0.1),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      //send event with new value
                      context.read<WeatherBloc>().add(
                            WeatherFetch(
                              city: _textController.text,
                            ),
                          );
                    },
                    child: const Text(
                      ButtonsText.showWeather,
                      style: TextStyle(color: Colors.white60),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
