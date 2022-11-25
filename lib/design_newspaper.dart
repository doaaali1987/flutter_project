import 'package:flutter/material.dart';
import 'package:flutter_project/page_box.dart';
import 'package:flutter_project/page_title.dart';

List<PageBoxData> items = [
  PageBoxData(imagePath: "assets/1.jpg", title: "Baby1"),
  PageBoxData(imagePath: "assets/2.jpg", title: "New baby"),
  PageBoxData(imagePath: "assets/1.jpg", title: "Baby2"),
  PageBoxData(imagePath: "assets/2.jpg", title: "New baby"),
  PageBoxData(imagePath: "assets/2.jpg", title: "Baby2")
];

class DesignMagazine extends StatelessWidget {
  const DesignMagazine({super.key});

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

      ///SingleChildScrollView
      /*--------------------------------
      SingleChildScrollView(
        child: Column(
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
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                //PageBox(imagePath: "assets/2.jpg", title: "Sleeping"),
                PageBox(item: items[0]),
                const SizedBox(
                  width: 5,
                ),
                //PageBox(imagePath: "assets/2.jpg", title: "Sleeping"),
                PageBox(item: items[1]),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                PageBox(item: items[2]),
                const SizedBox(
                  width: 3,
                ),
                PageBox(item: items[2]),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),
          ],
        ),),
      --------------------------------*/
    );
  }
}

///3yzen n3ml widget call it coz el ListView
///we commented it when we use the anonymous function in itemBuilder
/*Widget myItemBuilder(BuildContext context, int index) {
  return PageBox(item: items[index]);
}*/

/*--------------------------------------
void main() {
  Color purple = const Color.fromRGBO(133, 44, 186, .5);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "This is a newspaper magazine",
    home: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                PageTitle("News"),
                const SizedBox(
                  width: 5,
                ),
                PageTitle("Magazine"),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                PageBox(imagePath: "assets/2.jpg", title: "Baby"),
                const SizedBox(
                  width: 5,
                ),
                PageBox(imagePath: "assets/2.jpg", title: "Sleeping"),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),
        /*    Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/2.jpg"),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          color: purple,
                          child: const Text(
                            "Magazine",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/2.jpg"),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          color: purple,
                          child: const Text(
                            "Magazine",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/2.jpg"),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          color: purple,
                          child: const Text(
                            "Magazine",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset("assets/2.jpg"),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          color: purple,
                          child: const Text(
                            "Magazine",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
              ],
            ),*/
          ],
        ),
      ),
    ),
  ));
}
-----------------------------------------*/
