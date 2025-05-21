import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Deliver now"),
        Row(
          children: [
            // TODO address
            Text("6901 Hollywood Blv"),

            // TODO drop down menu
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        )
      ],
    );
  }
}
