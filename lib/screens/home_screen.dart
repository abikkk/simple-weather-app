import 'package:flutter/material.dart';
import 'package:weather/ui_utils/app_drawer.dart';
import 'package:weather/ui_utils/week_view.dart';
import 'package:weather_icons/weather_icons.dart';
import '../ui_utils/app_theme_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thurs', 'Fri', 'Sat'],
      weekDates = ['8th', '9th', '10th', '11th', '12th', '13th', '14th'],
      highTemps = ['14', '15', '10', '12', '13', '14', '16'],
      lowTemps = ['4', '5', '2', '2', '3', '4', '6'];

  List<IconData> iconData = [
    Icons.sunny,
    Icons.wb_twilight,
    Icons.cloudy_snowing,
    WeatherIcons.day_sunny,
    WeatherIcons.cloudy_windy,
    WeatherIcons.day_fog,
    WeatherIcons.day_sprinkle
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: AppThemeData.appThemeData.iconTheme,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    children: [
                      Text(
                        'Bagar, Pokhara',
                        style:
                            AppThemeData.appThemeData.textTheme.displayMedium,
                      ),
                      Text(
                        'Nepal',
                        style: AppThemeData.appThemeData.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),

                // ICON, TEMP, WEATHER
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Icon(
                                Icons.wb_cloudy_outlined,
                                size: 55,
                              ),
                            ),
                            Text(
                              '14 C',
                              style: AppThemeData
                                  .appThemeData.textTheme.headlineLarge,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Cloudy with a chance of rainfall',
                        style: AppThemeData.appThemeData.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),

                // ICON, SPEED, WIND TYPE
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Icon(
                                WeatherIcons.windy,
                                size: 22,
                              ),
                            ),
                            Text(
                              '10 m/s',
                              style: AppThemeData
                                  .appThemeData.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Windy',
                        style: AppThemeData.appThemeData.textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),

                // WEEK DETAILS
                Container(
                  padding: const EdgeInsets.only(top: 33, right: 44, left: 44),
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      WeekView(
                          weekDates: weekDates,
                          weekDays: weekDays,
                          weekWeathers: iconData,
                          highTemps: highTemps,
                          lowTemps: lowTemps)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
