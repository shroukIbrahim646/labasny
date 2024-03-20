import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF3AA6B9);
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xFF3AA6B9),

        appBar: AppBar(
          backgroundColor:  Color(0xFF3AA6B9),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none_sharp),
              onPressed: () {
                // Handle notification button press
              },
            ),
          ],
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.white),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:
        Container(
          child: Column(
            children: [ Container(
                padding: EdgeInsets.all(16.0),
                child: Column(

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        SizedBox(height: 70),
                        Text(
                          "Collections",
                          style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25),
                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,
                        ),
                        SizedBox(width: 50,),
                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,)
                      ],
                    )
                  ],
                )
            ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25),
                        Text("Your Items",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        SizedBox(width: 150),

                        IconButton(
                          icon: Icon(Icons.filter_list),
                          onPressed: () {
                            // Handle filter button press
                          },
                        ),

                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 40,),
                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,),
                        SizedBox(width: 50,),

                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,)
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 40,),
                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,),
                        SizedBox(width: 50,),
                        Image.network("https://i.pinimg.com/564x/ad/2e/07/ad2e072f3c3fa6b17f8677f84ebba0ae.jpg",
                          width: 130.0,
                          height: 130.0,)
                      ],
                    )

                  ],
                ),
              )],
          ),
        )
    );
  }
}