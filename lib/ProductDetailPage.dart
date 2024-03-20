import 'package:flutter/material.dart';

import 'Product.dart';

// Dummy product class

class ProductDetailPage extends StatefulWidget {
  final int productId; // Product ID

  const ProductDetailPage({required this.productId});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1; // Quantity for adding to cart

  @override
  Widget build(BuildContext context) {
    final product = getProductData(widget.productId); // Get product data

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: product.id,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Left-align text
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(product.description),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Quantity:'),
                      const SizedBox(width: 10),
                      DropdownButton<int>(
                        value: quantity,
                        items: [1, 2, 3, 4, 5].map((value) => DropdownMenuItem(
                          value: value,
                          child: Text('$value'),
                        )).toList(),
                        onChanged: (newValue) => setState(() => quantity = newValue!),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart logic using quantity
                    },
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ProductDetailPage(productId: 1),
  ));
}
