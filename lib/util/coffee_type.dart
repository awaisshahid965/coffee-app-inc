import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback typeClicked;

  const CoffeeType({Key? key, required this.coffeeType, required this.isSelected, required this.typeClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: typeClicked,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeType,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.white54,
            fontWeight: FontWeight.w200,
            fontSize: 16.0
          ),
        ),
      ),
    );
  }
}

