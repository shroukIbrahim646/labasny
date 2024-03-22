import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF3AA6B9);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          backgroundColor: myColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add back arrow press functionality
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 20),
            Image.network(
              'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
              width: 300,
              height: 450,
            ),
            SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Wide leg jeans',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

                ),
                SizedBox(width: 80),
                Text(
                  '\$450',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              height: 50,
              child: Text(
                "A high rise and wide, cropped leg for that on-trend \'90s look.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for Remove button
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(myColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                  child: Text('Remove',
                      style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 80),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for Edit button
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(myColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                  child: Text('Edit',
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}