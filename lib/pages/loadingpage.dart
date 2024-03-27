// ignore_for_file: empty_statements, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
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
      body: Center(
        child: CircularProgressIndicator(
          color: textColor,
        ),
      ),
    );
  }
}
