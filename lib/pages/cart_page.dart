import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_title.dart';
import 'package:food_delivery/pages/payment_page.dart';
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
            actions: [
              // TODO clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: Text(
                            "Are you sure you want to clear the cart?",
                          ),
                          actions: [
                            // TODO cancel button
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel"),
                            ),

                            // TODO yes button
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: const Text("Yes"),
                            ),
                          ],
                        ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [

              // TODO list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                          child: Center(child: Text("Cart is empty..")),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              // TODO get individual cart item
                              final cartItem = userCart[index];
                
                              // TODO return cart title UI
                              return MyCartTitle(cartItem: cartItem);
                            },
                          ),
                        ),
                  ],
                ),
              ),

              // TODO button to pay
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentPage(),
                  )
                ),
                  text: "Go to checkout",
              ),
              const SizedBox(height: 25,),
            ],
          ),
        );
      },
    );
  }
}
