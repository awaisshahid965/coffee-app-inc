import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee/util/coffee_tile.dart';
import 'package:coffee/util/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeeTypes = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false]
  ];

  final List coffees = [
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00'],
    ['Latte', 'with Almond Milk', '\$4.00']
  ];

  void changeCoffeeSelection(index) {
    setState(() {
      coffeeTypes.forEach((cf) { cf[1] = false; });
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.person),
          Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 50.0
              ),
            )
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your Coffee..',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)
                )
              ),
            ),
          ),
          const SizedBox(height: 25),
          // horizontal view for coffee types
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTypes.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                    coffeeType: coffeeTypes[index][0],
                    isSelected: coffeeTypes[index][1],
                    typeClicked: () {
                      changeCoffeeSelection(index);
                    }
                );
            }),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: ListView.builder(
                itemCount: coffees.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoffeeTile(
                      coffeeName: coffees[index][0],
                      coffeeDesc: coffees[index][1],
                      coffeePrice: coffees[index][2]
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Fav'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification'
          ),
        ],
      ),
    );
  }
}
