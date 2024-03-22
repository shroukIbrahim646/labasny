import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



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
            ),
          ], //actions
        ), //AppBar
        body: ListView(


          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.image), onPressed:(){
                      },),
                      Text('Post your outfit!'),
                    ],),),],),

            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.vexels.com/media/users/3/145908/raw/52eabf633ca6414e60a7677b0b917d92-male-avatar-maker.jpg'),
              ),
              title: Text('SherifSaber-1'),
            ), //listTile
            Column(
              children: <Widget>[
                Image.network('https://th.bing.com/th/id/OIP.YHxO4JcMET8clmnFyW24AgAAAA?rs=1&pid=ImgDetMain.jpg'),
                Padding(
                  padding: EdgeInsets.all(16.0),
                ),
              ],),//padding
            Stack(
              children: <Widget>[
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.chat_bubble_outline),
                        onPressed: () {
                          // Handle your button tap here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          // Handle your button tap here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark_border),
                        onPressed: () {
                          // Handle your button tap here
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'what do you think about my outfit guys?! its my birthday I need to look cool in this day',
                style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(48, 67, 109, 100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}