import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:coffeeshop/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Coffee Shop App",
        theme: ThemeData(primaryColor: Colors.indigo[400]),
        home: const SplashScreen(),
      ),
    );
  }
}
