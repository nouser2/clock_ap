import 'package:clock_ap/size_config.dart';
import 'package:flutter/material.dart';

import 'clock.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Newport Beach, USA | PST",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const TimeInHourAndMinute(),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            const Clock(),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
