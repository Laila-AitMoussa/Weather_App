// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print, empty_catches

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/cubit/get_weather/get_weather_state.dart';
import 'package:weather_app/model/weather_model2.dart';
import 'package:weather_app/pages/errorpage.dart';
import 'package:weather_app/pages/loadingpage.dart';
import 'package:weather_app/pages/resultpage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? ww;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<WeatherCubit>(context).getWeather(loc: 'Morocco');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is LoadingWeather) {
          return LoadingPage();
        } else if (state is SuccessWeather) {
          return ResultPage();
        } else {
          return ErrorPage();
        }
      },
    );
  }
}
