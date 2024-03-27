# Weather Flutter App
## Overview

This is a simple Flutter weather application that allows users to check the current weather conditions and forecast for the next three days. The app retrieves weather data from the [WeatherAPI](https://www.weatherapi.com/) and displays it in a user-friendly interface.

<div style="text-align:center">
    <img src="Todo_App.gif" width="200" height="400" />
</div>

## Features:
- Get the current weather conditions and forecast for any location.
- Dynamically change the app's background color based on the weather conditions.
- Error handling in case of network failure or invalid location.

## How to Use:
1. Clone or download the repository to your local machine.
2. Open the project in your preferred Flutter development environment.
3. Ensure you have all the necessary dependencies installed.
4. Create a free account on [WeatherAPI](https://www.weatherapi.com/) and copy your API key.
6. Paste your key [here](https://www.weatherapi.com/api-explorer.aspx) and in the services/weatherdio.dart file to replace the placeholder
5. Run the app on an emulator or physical device.
   

## Dependencies:
- `flutter_bloc`: State management library for Flutter applications.
- `dio`: A powerful HTTP client for Dart that provides support for interceptors, FormData, request cancellation, and more.
- `intl`: Provides internationalization and localization support for Flutter applications.

## File Structure:
- **lib/**
  - **cubit/**: Contains the Cubit class responsible for managing the app's state.
  - **model/**: Defines the data models used in the application.
  - **pages/**: Contains the UI pages of the application.
  - **services/**: Contains the service class responsible for fetching weather data.
  - **components/**: Reusable UI components used across different pages.

## Getting Started:
To get started with this project, follow the steps outlined in the "How to Use" section above. You can also customize the app further by modifying the code according to your preferences and requirements.

## Disclaimer:
This application is for demonstration purposes only and should not be used for critical weather-related decisions. The accuracy of the weather data depends on the WeatherAPI service used, and the developer does not guarantee its reliability.
