import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_title.dart';
import 'package:food_delivery/services/auth/auth_services.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout(){
    final authService = AuthServices();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // TODO app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),

          // TODO home list title
          MyDrawerTitle(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          // TODO settings list title
          MyDrawerTitle(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          // TODO logout list title
          MyDrawerTitle(text: "L O G O U T", icon: Icons.logout, onTap: logout),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
