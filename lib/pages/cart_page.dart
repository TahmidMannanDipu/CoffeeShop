import 'package:coffeeshop/component/coffee_tile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Cart",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              backgroundColor: backgroundColor,
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    //heading
                    const Center(
                      child: Text(
                        "Your Cart",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),

                    // list of cart item
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              Coffee eachCoffee = value.userCart[index];
                              //get individual cart item
                              return CoffeeTile(
                                  coffee: eachCoffee,
                                  onPressed: () => removeFromCart(eachCoffee),
                                  icon: const Icon(Icons.delete));
                            }))
                  ],
                ),
              ),
            )));
  }
}
