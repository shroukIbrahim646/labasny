import 'package:flutter/material.dart';
import 'package:labasny/App_Bar.dart';

class modeling extends StatelessWidget {
  int selectedImageCount = 4;

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
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle left arrow button press for image i
                            },
                            icon: const Icon(Icons.arrow_left),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/$i.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // Handle right arrow button press for image i
                            },
                            icon: const Icon(Icons.arrow_right),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button 1 press (optional)
                  },
                  child: const Text('Cancel', style: TextStyle(color: Colors.white)),
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
                const SizedBox(width: 20.0), // Spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle button 2 press (optional)
                  },
                  child: const Text(
                    'Review',
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