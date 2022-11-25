import 'package:flutter/material.dart';
import 'package:flutter_project/screens/game_board_screen.dart';

class IntroScreen extends StatelessWidget {
  static String routeName = "IntroScreen";
String player1="";
String player2="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Screen"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Player1 Name"
            ),
            onChanged: (text){
              player1=text;
            },
          ),
          TextField(decoration: InputDecoration(
            labelText: "Player2 Name"),
            onChanged: (text){
            player2=text;
            },
          ),
          Spacer(),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,GameBoardScreen.routeName,arguments: GameBoardArgument(player1, player2));
          }, child: Text("Start Game"))
        ],
      ),
    );
  }
}
class GameBoardArgument
{
  String p1;
  String p2;
  GameBoardArgument(this.p1,this.p2);
}