
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/calculator_screen.dart';
import 'package:flutter_project/screens/game_board_screen.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/screens/intro_screen.dart';
import 'package:flutter_project/screens/login_screen.dart';
import 'package:flutter_project/screens/register_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home:HomeScreen(),
    title: "This my first app",
    routes: {
      HomeScreen.routeName:(context) =>HomeScreen(),
      LoginScreen.routeName:(context) =>LoginScreen(),
      RegisterScreen.routeName:(context)=>RegisterScreen(),
      CalculatorScreen.routeName:(context) =>CalculatorScreen(),
      GameBoardScreen.routeName:(context) =>GameBoardScreen(),
      IntroScreen.routeName:(context) =>IntroScreen(),
      /*"Home" : (context) => HomeScreen(),
      "Login": (context) => LoginScreen(),
      "Register" :(_) => RegisterScreen(),*/
    },
    initialRoute:IntroScreen.routeName,
  ));
}
