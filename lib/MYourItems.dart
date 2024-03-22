import 'package:flutter/material.dart';
import 'package:untitled3/second_screen.dart';


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
        body:Container(
          decoration: BoxDecoration(
            color: myColor,
          ),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30),
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
              SizedBox(height: 20),
              FilterButtons(),
              Row(
                children: [

                  Column(


                    children: [
                      SizedBox(width: 200),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,)
                    ],
                  ),
                  Column(


                    children: [
                      SizedBox(width: 20),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,),
                      SizedBox(height: 30),
                      Image.network(
                        'https://i.pinimg.com/564x/22/eb/e5/22ebe5607985aa7bbd59341018d85615.jpg', // Placeholder image URL
                        width: 150,
                        height: 150,)
                    ],
                  )
                ],
              )

        ])
          ,

        ),

    ));

  }
}
class FilterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilterButton(title: 'Tops'),
        FilterButton(title: 'Jeans'),
        FilterButton(title: 'Jackets'),
      ],
    );
  }
}
