import 'package:flutter/material.dart';
import 'package:labasny/App_Bar.dart';
import 'package:labasny/modeling.dart'; // Import modeling page

class favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(title: ''),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(4, (index) {
                return Center(
                  child: Stack(
                    children: [
                      // Container for the product image
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/2.jpg'), // Replace with actual image path
                            fit: BoxFit.cover,
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
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => modeling()),
            );
          },
          child: Icon(Icons.style),
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}