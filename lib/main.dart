// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/pages/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => WeatherCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          //theme: ThemeData(useMaterial3: true),
        ));
  }
}
