// ignore_for_file: prefer_const_constructors_in_immutables, empty_catches, avoid_print, prefer_const_constructors

import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_weather_state.dart';
import 'package:weather_app/model/weather_model2.dart';
import 'package:weather_app/services/weatherdio.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(InitWeather());
  Weather? weather;
  void getWeather({String loc = 'Casablanca'}) async {
    try {
      emit(LoadingWeather());
      weather = await WeatherDio().getHttp(loc: loc);
      // print(weather!.location.name);
      var text = weather!.current.condition.text;
      if (text.contains('Sunny') || text.contains('sunny')) {
        backColor = Color(0xffffa656);
        textColor = Color(0xffF8F8F8);
      } else if (text.contains('rain') || text.contains('Rain')) {
        backColor = Color(0xffEDE6C9);
        textColor = Color(0xff373C5C);
      } else if (text.contains('cloudy') || text.contains('Cloudy')) {
        backColor = Color.fromARGB(255, 44, 120, 219);
        textColor = Color(0xffF8F8F8);
      } else if (text.contains('mist') || text.contains('Mist')) {
        backColor = Color.fromARGB(255, 195, 108, 31);
        textColor = Color.fromARGB(255, 251, 225, 168);
      } else if (text.contains('snow') || text.contains('Snow')) {
        backColor = Color(0xffF8F8F8);
        textColor = Color(0xffCC1D00);
      } else if (text.contains('Overcast') || text.contains('overcast')) {
        backColor = Color.fromARGB(255, 88, 89, 94);
        textColor = Color(0xffF8F8F8);
      } else if (text.contains('Sleet') || text.contains('sleet')) {
        backColor = Color(0xffF8F8F8);
        textColor = Color.fromARGB(255, 44, 120, 219);
      } else if (text.contains('drizzle') || text.contains('Drizzle')) {
        backColor = Color.fromARGB(255, 65, 82, 123);
        textColor = Color.fromARGB(255, 182, 184, 186);
      } else if (text.contains('Blizzard') || text.contains('blizzard')) {
        backColor = Color.fromARGB(255, 182, 184, 186);
        textColor = Color.fromARGB(255, 65, 82, 123);
      } else if (text.contains('Fog') || text.contains('fog')) {
        backColor = Color.fromARGB(255, 141, 141, 141);
        textColor = Color.fromARGB(255, 100, 82, 46);
      } else if (text.contains('outbreaks') || text.contains('Outbreaks')) {
        backColor = Color.fromARGB(255, 199, 63, 5);
        textColor = Color.fromARGB(255, 235, 240, 178);
      } else if (text.contains('Ice') || text.contains('ice')) {
        backColor = Color.fromARGB(255, 4, 147, 179);
        textColor = Color.fromARGB(255, 232, 234, 215);
      } else if (text.contains('Clear')) {
        backColor = Color(0xff373C5C);
        textColor = Color(0xffEDE6C9);
      }
      emit(SuccessWeather());
    } catch (e) {
      emit(FaillureWeather(error: e.toString()));
    }
  }
}
