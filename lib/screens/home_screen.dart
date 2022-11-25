import 'package:flutter/material.dart';

import '../page_box.dart';
import '../page_title.dart';

List<PageBoxData> items = [
  PageBoxData(imagePath: "assets/1.jpg", title: "Baby1"),
  PageBoxData(imagePath: "assets/2.jpg", title: "New baby"),
  PageBoxData(imagePath: "assets/1.jpg", title: "Baby2"),
  PageBoxData(imagePath: "assets/2.jpg", title: "New baby"),
  PageBoxData(imagePath: "assets/2.jpg", title: "Baby2")
];
class HomeScreen extends StatelessWidget {
  static String routeName="HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:

      ///ListView
      Column(
        children: [
          Row(
            children: [
              PageTtile("News"),
              const SizedBox(
                width: 5,
              ),
              PageTtile("Magazine"),
            ],
          ),
          Expanded(
              child:
              //ListView.builder(
              GridView.builder(
                  itemCount: items.length,
                  //scrollDirection: Axis.horizontal,
                  //itemBuilder: myItemBuilder),
                  /*itemBuilder: (context, index) {
              return PageBox(item: items[index]);},*/
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:2/1.9,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context,index)=>PageBox(item: items[index])
                ///below code for Grid view
              )),
        ],
      ),
    );
  }
}
