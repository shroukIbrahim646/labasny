import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(58, 166, 185, 100),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
          // Add your image here
          actions: [
            const Text(
              'عربي',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              color: Colors.red[800],
              onPressed: () {
                // Handle the button's onPressed event
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.flash_on,color: Colors.yellow,),
              title: Text('Flash Sale Alert!'),
              subtitle: Text('Get up to 50% off on all summer collections at Abody For Clothes. Hurry, offer ends tonight!'),
            ),
            ListTile(
              leading: Icon(Icons.star,color: Colors.deepOrange,),
              title: Text('Weekend Special!'),
              subtitle: Text('Buy 2 get 1 free on all denim wear! Don\'t miss out on this amazing deal at Abody For Clothes.'),
            ),
            ListTile(
              leading: Icon(Icons.highlight, color: Colors.amber,),
              title: Text('Exclusive Offer!'),
              subtitle: Text('Flat 30% off on your first purchase. Use code \'NEW30\' at checkout. Welcome to Abody For Clothes!'),
            ),
          ],
        ),
      ),
    );
  }
}