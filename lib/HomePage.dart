import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labasny/ChildPage.dart';
import 'package:labasny/DiscountPage.dart';
import 'package:labasny/ManPage.dart';
import 'package:labasny/Product.dart';
import 'package:labasny/WomanPage.dart';
import 'package:labasny/App_Bar.dart';
import 'package:labasny/ratingpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(title: ''),

    body: Column(
    children: [
    SizedBox(height: 20), // Add padding between app bar and search bar
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
    child: TextField(
    decoration: InputDecoration(
    fillColor: Color(0xffFF9EAA), // Add background color
    filled: true,
    hintText: 'Search...',
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    onChanged: (value) {
    // Implement search functionality here based on your product data
    },
    ),
    ),
    SizedBox(height: 20), // Add padding between search bar and row
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    ImageButton(
    icon: Icons.woman,
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WomanPage()),
    );
    },
    label: 'Women', // Add text under the button
    ),
    ImageButton(
    icon: Icons.man,
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ManPage()),
    );
    },
    label: 'Men', // Add text under the button
    ),
    ImageButton(
    icon: Icons.child_care,
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ChildPage()),
    );
    },
    label: 'Children', // Add text under the button
    ),
    ImageButton(
    icon: Icons.discount,
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DiscountPage()),
    );
    },
    label: 'Discounts', // Add text under the button
    ),
    ],
    ),
    Expanded(
    child: SingleChildScrollView(
    child: GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children: List.generate(100, (index) {
    return Center(
    child: Stack(
    children: [
    // Container for the product image with favorite icon
    Container(
    width: MediaQuery.of(context).size.width * 0.4,
    height: MediaQuery.of(context).size.width * 0.4,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/2.jpg'), // Replace with actual image path
    fit: BoxFit.cover,
    ),
    ),
    child: Align(
    alignment: Alignment.topRight,
    child: IconButton(
    icon: Icon(Icons.favorite, color: Colors.red),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ratingpage()),
    );
    },
    ),
    ),
    ),
    // Positioned widget for the product name at center bottom
    Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
    height: 50,
    color: Colors.black.withOpacity(0.5),
    alignment: Alignment.center,
    child: Text(
    'Product Name', // Replace with actual product name
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
    ],
    ),
    );
    }),
    ),
    ),
    ),
    ],
    ),
    );


  }
}

class ImageButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String label; // Label text

  const ImageButton({required this.icon, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Ink(
            decoration: const ShapeDecoration(
              color: Color(0xffFF9EAA),
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(icon),
              iconSize: 30, // Increase icon size
              color: Colors.white,
              onPressed: onPressed,
            ),
          ),
        ),
        SizedBox(height: 5), // Add space between icon and label
        Text(label, style: TextStyle(fontSize: 12)), // Display label text
      ],
    );
  }
}
