import 'package:flutter/material.dart';
import 'my_theme.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = 'register-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: MyTheme.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset('assets/image/image 1.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 300, left: 110),
                    child: Text('Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0))),
                        prefixIcon: Container(
                          decoration: BoxDecoration(borderRadius:  BorderRadius.circular(20),color: MyTheme.pinkColor),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.person,size: 32,color: Colors.white),
                          ),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('User name'),
                        ),
                        filled: true,
                        fillColor: MyTheme.lightpinkColor)),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0))),
                        prefixIcon: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: MyTheme.pinkColor),
                            child: Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Icon(Icons.lock,size: 32,color: Colors.white,),
                            )),
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Password'),
                        ),
                        filled: true,
                        fillColor: MyTheme.lightpinkColor)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              ElevatedButton(onPressed: (){}, child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 18),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.pinkColor,
                ),)
            ],
          ),
        ),
      ),
    );
  }
}
