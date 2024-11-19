import 'package:coffeeshop/component/coffee_tile.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added to cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text(
                    "Choose Your Coffee",
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                backgroundColor: backgroundColor,
                body: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          "How would you like your coffee?",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: value.coffeeShop.length,
                              itemBuilder: (context, index) {
                                //get individual coffee
                                Coffee eachCoffee = value.coffeeShop[index];

                                //return the tile for this coffee
                                return CoffeeTile(
                                  coffee: eachCoffee,
                                  icon: const Icon(Icons.add),
                                  onPressed: () => addToCart(eachCoffee),
                                );
                              }))
                    ],
                  ),
                ),
              ),
            ));
  }
}
