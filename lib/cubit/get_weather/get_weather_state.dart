class WeatherState {}

class InitWeather extends WeatherState {}

class LoadingWeather extends WeatherState {}

class SuccessWeather extends WeatherState {}

class FaillureWeather extends WeatherState {
  FaillureWeather({required String error});
}
