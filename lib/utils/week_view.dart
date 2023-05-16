import 'package:flutter/material.dart';
import 'package:weather/utils/app_theme_data.dart';

class WeekView extends StatefulWidget {
  const WeekView(
      {super.key,
      required this.weekDates,
      required this.weekDays,
      required this.weekWeathers,
      required this.highTemps,
      required this.lowTemps});

  final List weekDates, weekDays, highTemps, lowTemps;
  final List<IconData> weekWeathers;
  @override
  State<WeekView> createState() => _WeekViewState();
}

class _WeekViewState extends State<WeekView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 7; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  '${widget.weekDays[i]}, ${widget.weekDates[i]}',
                  style: AppThemeData.appThemeData.textTheme.bodyLarge,
                )),
                Expanded(child: Icon(widget.weekWeathers[i])),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${widget.highTemps[i]} , ${widget.lowTemps[i]}',
                          style: AppThemeData.appThemeData.textTheme.bodyLarge,
                        ))),
              ],
            ),
          ),
      ],
    );
  }
}
