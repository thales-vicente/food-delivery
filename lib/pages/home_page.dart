import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_silver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySilverAppBar(
                title: Text('title'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    // TODO my current location
                    const MyCurrentLocation(),

                    // TODO description box
                    const MyDescriptionBox(),
                  ],
                ),
              ),
            ],
        body: Container(color: Colors.blue),
      ),
    );
  }
}
