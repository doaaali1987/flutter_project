import 'package:flutter/material.dart';
import 'package:flutter_project/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName="RegisterScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body:
           Center(child: ElevatedButton(onPressed:()
              {
                ///pop 3shn msh ye3ml arrow fo2
                Navigator.pop(context);
              },child: Text("Back to LogIn"))),
    );
  }
}
