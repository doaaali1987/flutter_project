import 'package:flutter/material.dart';

class PageTtile extends StatelessWidget
{
  String title;
  PageTtile(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(Expanded(
      child: Container(
          alignment: Alignment.center,
          //padding: EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 12),
          color: const Color.fromARGB(255, 156, 19, 206),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    ));
  }
  
}