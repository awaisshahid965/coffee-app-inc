import 'package:flutter/material.dart';

class DummyCard extends StatelessWidget {
  final Color cardColor;
  const DummyCard({Key? key, required this.cardColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 55.0),
        child: Center(
          child: Text("Card", style: TextStyle(color: Colors.white),),
      ),
    ),
    );
  }
}

