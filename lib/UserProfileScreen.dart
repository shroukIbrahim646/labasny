import 'package:flutter/material.dart';
import 'my_theme.dart';

class UserProfileScreen extends StatefulWidget {
  static const String routeName = 'userProfile-screen';

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Settings',
      style: optionStyle,
    ),
    Text(
      'Index 1: Support',
      style: optionStyle,
    ),
    Text(
      'Index 2: Log out',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.blueColor,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Settings'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Support'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Log out'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
            width: double.infinity,
            height: double.infinity,
            color: MyTheme.blueColor,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 19,right: 19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage("assets/image/store.png"),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: Center(child: Text('Local Store',style: Theme.of(context).textTheme.titleLarge,)),
                ),
                Text('Name:',style: Theme.of(context).textTheme.titleMedium),
                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 5),
                  child: TextField(decoration: InputDecoration(
                    hintText: "Local Store"
                  ),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text('E-mail:',style: Theme.of(context).textTheme.titleMedium),
                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 5),
                  child: TextField(decoration: InputDecoration(
                      hintText: "Adham@gmail.com"
                  ),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text('Password:',style: Theme.of(context).textTheme.titleMedium),
                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 5),
                  child: TextField(decoration: InputDecoration(
                      hintText: "**********"
                  ),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Text('Decoration:',style: Theme.of(context).textTheme.titleMedium),
                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 5),
                  child: TextField(decoration: InputDecoration(
                      hintText: "Local Store"
                  ),),
                ),
              ],
            ),
          ),
        ),
          ),
      );
  }
}
