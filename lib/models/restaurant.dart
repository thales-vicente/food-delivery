import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // TODO list of food menu
  final List<Food> _menu = [
    // TODO burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 25.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 25.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 0.99),
        Addon(name: "Grilled Mushrooms", price: 1.49),
        Addon(name: "Hummus Spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A char-grilled chicken breast topped with a slice of grilled pineapple, Swiss cheese",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 0.99),
        Addon(name: "Extra pineapple", price: 1.99),
        Addon(name: "Bacon", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "This burger is a blue cheese lover's dream. It features a succulent ground beef patty",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Sautéed Mushrooms", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Spicy Mayo", price: 0.99),
      ],
    ),

    // TODO salad
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Tomatoes, cucumbers, red onions, olives, feta cheese with olive oil and herbs.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Delight in the flavors of the East with this sesame-infused salad.",
      imagePath: "lib/images/salads/asiansesame_salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Mandarin Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.49),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "South West Chicken Salad",
      description:
          "This colorful salad combines the zesty flavors of the Southwest.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico de Gallo", price: 1.49),
        Addon(name: "Guacamole", price: 1.99),
      ],
    ),

    // TODO sides
    Food(
      name: "Potato Fries",
      description: "Crispy potato fries with a touch of salt.",
      imagePath: "lib/images/sides/fries_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Side",
      description: "BBQ",
      imagePath: "lib/images/sides/bbq_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites",
      description: "Golden bow, bite-sized mac and cheese balls.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeño Slices", price: 1.49),
        Addon(name: "Sriracha Drizzle", price: 1.99),
      ],
    ),
    Food(
      name: "Meatballs side",
      description: "Meatballs.",
      imagePath: "lib/images/sides/meatballs_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Rib side",
      description: "rib.",
      imagePath: "lib/images/sides/rib_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajun Spice", price: 1.99),
      ],
    ),

    // TODO desserts
    Food(
      name: "Petit Gateau",
      description: "Cake and ice cream",
      imagePath: "lib/images/desserts/petit_gateau_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cupcake",
      description: "Cupcake",
      imagePath: "lib/images/desserts/cupcake_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Ice Cream",
      description: "ice cream",
      imagePath: "lib/images/desserts/icecream_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Macaron",
      description: "french dessert",
      imagePath: "lib/images/desserts/macaron_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Pie",
      description: "It's a pie",
      imagePath: "lib/images/desserts/pie_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),

    // TODO drinks
    Food(
      name: "Lemonade",
      description: "Lemon and water",
      imagePath: "lib/images/drinks/lemonade_drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Orange and water",
      imagePath: "lib/images/drinks/orange_drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Strawberry juice",
      description: "Strawberry and water",
      imagePath: "lib/images/drinks/strawberry_drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon, served over ice",
      imagePath: "lib/images/drinks/tea_drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach Flavor", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.49),
        Addon(name: "Honey", price: 1.99),
      ],
    ),
    Food(
      name: "Vodka",
      description: "Russia Vodka",
      imagePath: "lib/images/drinks/vodka_drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
  ];

  /*

  G E T T E R S

   */

  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S

  */

  // TODO user cart
  final List<CartItem> _cart = [];

  // TODO add to car
  void addToCart(Food food, List<Addon> selectedAddons) {
    // TODO see if there is a cart item already with the same foo and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // TODO check if the food items are the same
      bool isSameFood = item.food == food;

      // TODO check if the list 0f selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    // TODO if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // TODO otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // TODO remove form cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // TODO get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // TODO get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // TODO clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

   */

  // TODO generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // TODO format the date to include up to seconds only
    String formattedDate =
      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
        .writeln("  Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  // TODO format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // TODO format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
