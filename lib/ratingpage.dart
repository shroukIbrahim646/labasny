import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:labasny/App_Bar.dart';

class ratingpage extends StatelessWidget {
  int selectedImageCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB0DBE3),
      appBar: App_Bar(title: ''),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // White box with adaptive sizing and fixed height
            Container(
              color: Colors.white,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.9, // Max width
                maxHeight: 500.0, // Adjust height as needed
              ),
              // Wrap children in Expanded widgets for equal space distribution
              child: Column(
                children: [
                  for (int i = 1; i <= selectedImageCount; i++)
                    Expanded(
                      child: Image.asset(
                        'assets/images/$i.jpg', // Replace with your image paths
                        fit: BoxFit.cover, // Adjust fit as needed
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(height: 20.0),
            Text('Impressing colors!! .'),
                Text(' Fashion is indeed a beautiful form of art!'),
            const SizedBox(height: 30.0), // Spacing between elements

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button 1 press (optional)
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF9EAA),
                  ),
                ),
                const SizedBox(width: 20.0), // Spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle button 2 press (optional)
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF9EAA),
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
