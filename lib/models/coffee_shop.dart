import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    const Coffee(
        name: "Long Black", price: "200 Tk", imagePath: "lib/images/black.png"),
    // expresso
    const Coffee(
        name: "Expresso",
        price: "310 Tk",
        imagePath: "lib/images/expresso.png"),
    // Iced Coffee
    const Coffee(
        name: "iced coffee",
        price: "190 Tk",
        imagePath: "lib/images/iced_coffee.png"),

    // Latte
    const Coffee(
        name: "Latte", price: "400 Tk", imagePath: "lib/images/latte.png")
  ];

  //user cart
  final List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
