import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/restaurant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // TODO cart
        final userCart = restaurant.cart;

        // TODO scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // TODO get individual cart item
                    final cartItem = userCart[index];

                    // TODO return cart title UI
                    return ListTile(title: Text(cartItem.food.name));
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
