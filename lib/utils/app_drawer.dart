import 'package:flutter/material.dart';
import 'package:weather/utils/app_theme_data.dart';
import 'package:weather/utils/function_utils.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: Column(
              children: [
                LocationRow(
                  location: 'Refresh data',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LocationRow extends StatefulWidget {
  const LocationRow({super.key, required this.location});

  final String location;
  @override
  State<LocationRow> createState() => _LocationRowState();
}

class _LocationRowState extends State<LocationRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  FuntionUtils.getWeather('Pokhara');
                },
                child: Text(
                  widget.location.toString(),
                  style: AppThemeData.appThemeData.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
