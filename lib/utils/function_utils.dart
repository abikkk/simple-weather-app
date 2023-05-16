import 'package:flutter/material.dart';
import 'package:open_weather_api_client/open_weather_api_client.dart';

class FuntionUtils {
  static getWeather(String city) async {
    // Setting up the weather factory
    CurrentWeatherFactory factory = CurrentWeatherFactory(
        apiKey: "1a5d927e21edf2f1897af756f2446f97",
        settings: UnitSettings(
          windSpeedUnit: WindSpeedUnit.Knots,
        ),
        cityName: 'London',
        // locationCoords: LocationCoords(latitude: 100.00, longitude: 100.00),
        maxTimeBeforeTimeout: const Duration(seconds: 5));

    RequestResponse<CurrentWeather?> result =
    await factory.getWeather(); // Requesting the weather

    // Checking if the request was successful
    if (result.requestStatus == RequestStatus.Successful) {
    debugPrint(result.response!.cityName
        .toString()); // Printing the city name from the server

    debugPrint(result.response!.temp.toString()); // Printing the temperature

    debugPrint(
        result.response!.weatherType.toString()); // Printing the weather type
    } else {
      debugPrint(
          "Error of type ${result.requestStatus} occurred"); // Printing the error that occurred
    }
  }
}
