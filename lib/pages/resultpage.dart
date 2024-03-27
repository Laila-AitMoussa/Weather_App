// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/components/weathercard.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/model/weather_model2.dart';
import 'package:weather_app/pages/searchpage.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<WeatherCubit>(context).weather!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backColor, // Color(0xffffa656),
      appBar: AppBar(
        backgroundColor: backColor,
        title: Text(
          'Weather App',
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Searchbar(),
            Spacer(),
            Row(
              children: [
                Icon(Icons.location_pin, size: 40, color: textColor),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.location.name,
                      style: TextStyle(fontSize: 25.0, color: textColor),
                    ),
                    Text(
                      weather.location.country,
                      style: TextStyle(fontSize: 20.0, color: textColor),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      weather.current.condition.text,
                      style: TextStyle(fontSize: 26.0, color: textColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      weather.current.tempC.toString(),
                      style: TextStyle(fontSize: 42.0, color: textColor),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                /* Icon(
                  Icons.sunny,
                  size: 50,
                  color: textColor,
                ),*/
                Image.network(
                  'https:${weather.current.condition.icon}',
                  width: 64, // Adjust width and height as needed
                  height: 64,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeatherCard(
                  index: 0,
                ),
                SizedBox(
                  width: 10,
                ),
                WeatherCard(
                  index: 1,
                ),
                SizedBox(
                  width: 10,
                ),
                WeatherCard(
                  index: 2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
