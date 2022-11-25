import 'package:flutter/material.dart';

class PageBox extends StatelessWidget {
  Color purple=const Color.fromRGBO(133, 44, 186, .5);
  /*String title;
  String imagePath;
  PageBox({required this.imagePath,required this.title});*/
  PageBoxData item;
  PageBox({required this.item});
  /*List<String> magazinesNames=["Baby", "Sleep"];
List<String> imagesPaths=["assets/2.jpg","assets/2.jpg"];*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          //Image.asset(imagePath),
          Image.asset(item.imagePath,height: double.infinity,width: double.infinity,fit: BoxFit.fitWidth),
          Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              color: purple,
              child: Text(
                //title,
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ],
      ),
    );
  }
}
class PageBoxData
{
  String imagePath;
  String title;
  PageBoxData({required this.imagePath, required this.title});
}
