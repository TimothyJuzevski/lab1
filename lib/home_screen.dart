import 'package:flutter/material.dart';
import 'product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> clothingItems = [
    {"name": "T-Shirt", "image": "assets/tshirt.png", "description": "Comfortable cotton T-Shirt", "price": 20.0},
    {"name": "Jeans", "image": "assets/jeans.png", "description": "Classic blue denim jeans", "price": 50.0},
    {"name": "Sneakers", "image": "assets/sneakers.png", "description": "Stylish and durable sneakers", "price": 70.0},
    {"name": "Jacket", "image": "assets/jacket.png", "description": "Warm winter jacket", "price": 120.0},
    {"name": "Cap", "image": "assets/cap.png", "description": "Trendy baseball cap", "price": 15.0},
    {"name": "Hoodie", "image": "assets/hoodie.png", "description": "Cozy cotton hoodie", "price": 40.0},
    {"name": "Shorts", "image": "assets/shorts.png", "description": "Comfortable summer shorts", "price": 25.0},
    {"name": "Dress", "image": "assets/dress.png", "description": "Elegant evening dress", "price": 100.0},
    {"name": "Sandals", "image": "assets/sandals.png", "description": "Lightweight summer sandals", "price": 30.0},
    {"name": "Scarf", "image": "assets/scarf.png", "description": "Warm woolen scarf", "price": 18.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("201546"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: clothingItems.length,
          itemBuilder: (context, index) {
            final item = clothingItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(product: item),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(item["image"], height: 80),
                    SizedBox(height: 10),
                    Text(
                      item["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("\$${item["price"]}",
                        style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
