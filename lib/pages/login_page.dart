import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // TODO login method
  void login() {
    /*

    fill out authentication here..

     */

    // TODO navigate to home page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage(),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
            ),

            const SizedBox(height: 25),

            // TODO message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // TODO email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // TODO password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // TODO sign in button
            MyButton(text: "Sign In", onTap: login),

            const SizedBox(height: 25),

            // TODO not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme
                          .of(context)
                          .colorScheme
                          .inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
