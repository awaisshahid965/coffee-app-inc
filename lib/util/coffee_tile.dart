import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeName;
  final String coffeeDesc;
  final String coffeePrice;

  const CoffeeTile({Key? key, required this.coffeeName, required this.coffeeDesc, required this.coffeePrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black54,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: NetworkImage('https://pbs.twimg.com/media/FQ2R-FLWYAEUaIg?format=jpg&name=small'),
                  fit: BoxFit.cover
                ),
              ),
            ),

            // Card Heading & Sub Heading
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Latte',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'with Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Card Price Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$4.00'),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                      child: const Icon(Icons.add)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
