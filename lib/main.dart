import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "This is my first app",
    //   home: Text("First app"),
    home: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null),
      //backgroundColor: Colors.yellow,
      //drawer:Drawer(backgroundColor: Colors.black),
      body: Image.asset("assets/1.jpg"),
      /*Container(
        color: Color.fromRGBO(183, 213, 224, 1),
        child:Stack(
          alignment: Alignment.bottomCenter,
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              width: 300,
              //margin: EdgeInsets.all(20),
              color: Colors.red,
              //child: Text("First line for text")
            ),
            Container(
              height: 200,
              width: 200,
              //padding: EdgeInsets.all(20),
              color: Colors.yellow,
              //child: Text("Second line for text")
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              //child: Text("Third line for text")
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.pink,
              //child: Text("Fourth line for text")
            ),
          ],
        ),
      ),*/
      appBar: AppBar(
        //centerTitle: true,
        title: Text("Hello app bar"),
        backgroundColor: Colors.blue,
        actions: [
          Container(margin: EdgeInsets.only(right: 20), child: Icon(Icons.add))
        ],
      ),
    ),
  ));
}
