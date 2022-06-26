import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/models/my_weather_entity.dart';

class ForecastHelper {
  ///a special method of data processing and obtaining information
  ///for the next 3 days with a list of temperatures sorted in ascending order

  List dayList(List<MyWeather> list) {
    var dayTemp = <String, double>{};
    final dayList = [];
    final parts = [0, 8, 16];

    ///get a new day every 8 values and add it to the map
    dayTemp = {
      for (var element in parts)
        list[element].dt_txt!: list[element].main['temp'],
    };

    //conver to list and sort by value
    final mapEntries = dayTemp.entries.toList()
      ..sort((b, a) => b.value.compareTo(a.value));

    ///update sort map and create List of Rows for display
    dayTemp
      ..clear()
      ..addEntries(mapEntries)
      ..forEach((key, value) {
        dayList.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateFormat('dd/MM').format(
                    DateTime.parse(key),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CircleAvatar(
                    backgroundColor: Colors.white60,
                    radius: 2,
                  ),
                ),
                Text(
                  ' ${value.round().toString()} °C',
                  style: const TextStyle(
                    fontSize: 60,
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      });

    return dayList;
  }
}
