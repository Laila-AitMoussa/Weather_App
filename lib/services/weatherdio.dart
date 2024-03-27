// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model2.dart';

class WeatherDio {
  final dio = Dio();
  Future<Weather> getHttp( {required String loc}) async {
    var response = await dio
        .get('https://api.weatherapi.com/v1/forecast.json', queryParameters: {
      'key': '5ee86c4bdf08432198c154130241903',
      'q': loc,
      'aqi': 'no',
      'days': 3,
    });
    Weather weather = Weather.fromJson(response.data);
    //print(model.name);
    
    return weather;
  }
}
