// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/pages/searchpage.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Searchbar(),
            Spacer(),
            Text(
              'Something went wrong',
              style: TextStyle(color: textColor, fontSize: 17),
            ),
            Text(
              'try again..',
              style: TextStyle(color: textColor, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
