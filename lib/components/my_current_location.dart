import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  final texController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text("Your location"),
            content: const TextField(
              decoration: const InputDecoration(hintText: "Enter address.."),
            ),
            actions: [
              // TODO cancel button
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  texController.clear();
                },
                child: const Text("Cancel"),
              ),

              // TODO save button
              MaterialButton(
                onPressed: () {
                  // TODO update delivery address
                  String newAddress = texController.text;
                  context.read<Restaurant>().updateDeliveryAddress(newAddress);
                  Navigator.pop(context);
                  texController.clear();
                },
                child: const Text("Save"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // TODO address
               Consumer<Restaurant>(
                   builder: (context, restaurant, child) => Text(
                     restaurant.deliveryAddress,
                     style: TextStyle(
                       color: Theme.of(context).colorScheme.primary,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
               ),

                // TODO drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
