// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  TextEditingController searchCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: textColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(13)),
          height: 75,
          child: TextField(
              controller: searchCont,
              onSubmitted: (value) {
                BlocProvider.of<WeatherCubit>(context).getWeather(loc: value);
              },
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search here...',
                  border: InputBorder.none
                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                  )),
        ))
      ],
    );
  }
}
