import 'package:flutter/material.dart';
import 'package:weather/ui_utils/app_theme_data.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Options',
                        style:
                            AppThemeData.appThemeData.textTheme.displayMedium,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.settings)),
                    ],
                  ),
                ),
                LocationRow(
                  location: 'Pokhara',
                ),
                LocationRow(location: 'Kathmandu'),
              ],
            ),
          ),
          Column(
            children: [
              const Divider(
                thickness: 1,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          )
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
                onTap: () {},
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
