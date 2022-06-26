import 'package:flutter/material.dart';

// text constants for quick and convenient adjustments
class MyTitles {
  static const String appName = 'iWeather';
  static const String hintText = 'Укажите город';
  static const String helperText = 'Пример: Berlin';
  static const String humidity = 'Влажность:';
  static const String speedWind = 'Скорость ветра:';
  static const appBarTitle = Text(
    'Прогноз на 3 дня',
    style: TextStyle(
      fontSize: 20,
      color: Colors.white60,
      fontWeight: FontWeight.bold,
    ),
  );
}

//Your unique API key for getting data
class Settings {
  static const String apiKey = '1d1e491bc8058b6551a3b79846292edd';
}

//Your name of buttons
class ButtonsText {
  static const String showWeather = 'Показать погоду';
  static const String changeCity = 'Изменить город';
  static const goToHome = Text('Вернуться на главную');
}

//warning about an error or invalid data
class Attentions {
  static const String dataError =
      'Ошибка получения данных, проверьте интернет соединение';
  static const String textFieldisEmpty = 'Введите название города';
  static const String cityError = 'Город не найден';
}

//units of measurement
class Units {
  static const String celsius = '°C';
  static const String percent = ' %';
  static const String ms = ' м/с';
}
