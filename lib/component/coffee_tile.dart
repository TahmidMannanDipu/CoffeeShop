import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  final Widget icon;
  const CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: ListTile(
        title: Text(
          coffee.name,
          style: kTitle,
        ),
        subtitle: Text(
          coffee.price,
          style: kSubTitle,
        ),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
