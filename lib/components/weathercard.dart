// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/model/weather_model2.dart';

class WeatherCard extends StatefulWidget {
  int index;
  WeatherCard({super.key, required this.index});

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: textColor.withOpacity(0.2), // Color.fromARGB(50, 237, 230, 201),
      ),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            DateFormat('E - d')
                .format(weather.forecast.forecastday[widget.index].date),
            style: TextStyle(fontSize: 17, color: textColor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              weather.forecast.forecastday[widget.index].day.condition.text,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
          ),
          Image.network(
            'https:${weather.forecast.forecastday[widget.index].day.condition.icon}',
            width: 38, // Adjust width and height as needed
            height: 38,
          ),
          Text(
            weather.forecast.forecastday[widget.index].day.avgtempC.toString(),
            style: TextStyle(color: textColor),
          )
        ],
      ),
    ));
  }
}
