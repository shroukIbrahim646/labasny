import 'package:flutter/material.dart';
import 'my_theme.dart';

class AddItemScreen extends StatelessWidget {
  static const String routeName = 'addItem-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.primaryColor,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: MyTheme.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'add new item',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    margin: EdgeInsets.all(20),
                    color: MyTheme.pinkColor,
                    child: Center(
                      child: Text(
                        '-choose category-',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'Item Name',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8), // Adjust the vertical padding
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'Description',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8), // Adjust the vertical padding
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'Price',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8), // Adjust the vertical padding
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      'Photo',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8), // Adjust the vertical padding
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text('Add'),
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.pink,
                  //
                  //   ),
                  // ),

                  ElevatedButton(
                    child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      shape: LinearBorder.bottom(),
                      backgroundColor: MyTheme.redColor,
                    ),
                    onPressed: () {},
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
