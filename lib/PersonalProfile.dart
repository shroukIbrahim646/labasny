import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        body:
        Center(
              child: ListView(
            children: <Widget>[
              SizedBox(height: 50.0),
              ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.gmB95pkEDgfTo3AUAOou5AAAAA?rs=1&pid=ImgDetMain.jpg')),
              ),
              Text('Edit Profile Picture'), // Adjust the value as needed

              SizedBox(height: 50.0),
              SizedBox(
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',

                ),
              ),),
              SizedBox(height: 25.0),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(// Adjust this value to change the border radius
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              SizedBox(
                child:TextField(
                  decoration:
                  InputDecoration(
                      border: OutlineInputBorder(),
                     hintText: 'Birthday',
                      icon: Icon(Icons.calendar_month_outlined)
                  ),
                ),
              ),

              SizedBox(height: 25.0),
              SizedBox(
                child:TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Gender',
                  ),
                ),),
              SizedBox(height: 25.0),
              SizedBox(
                child:TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'City',
                  ),
                ),),
    ],
          ),

      ),),
    );
  }
}