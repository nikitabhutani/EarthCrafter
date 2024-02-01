import 'package:earthcrafter/utils/constants/images.dart';
import 'package:flutter/material.dart';

class DairyMarketplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dairy Marketplace'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: dairyProducts.length,
                itemBuilder: (context, index) {
                  return _buildProductCard(dairyProducts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(DairyProduct product) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              product.imagePath,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 8),
            Text(
              product.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\Rs. ${product.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class DairyProduct {
  final String title;
  final double price;
  final String imagePath;

  DairyProduct(
      {required this.title, required this.price, required this.imagePath});
}

final List<DairyProduct> dairyProducts = [
  DairyProduct(
    title: 'Fresh Milk',
    price: 2.99,
    imagePath: EImages.milk,
  ),
  DairyProduct(
    title: 'Yogurt',
    price: 1.99,
    imagePath: EImages.yogurt,
  ),
  DairyProduct(
    title: 'Cheese',
    price: 4.99,
    imagePath: EImages.cheese,
  ),
  // Add more products as needed
];
