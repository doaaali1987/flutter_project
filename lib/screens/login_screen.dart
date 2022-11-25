import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routeName="LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ElevatedButton(onPressed:(){
           // Navigator.pushNamed(context, HomeScreen.routeName);
            ///3shn neshel el arrow back mn el home screen w tekon de last screen lw 3mlna back el app close
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          },
              child: Text("LogIn"))),
          Center(child: ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, RegisterScreen.routeName);
          },
              child: Text("SignUp"))),
        ],
      )
    );
  }
}
