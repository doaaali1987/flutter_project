import 'package:flutter/material.dart';
import 'package:flutter_project/components/xo_button.dart';
import 'package:flutter_project/screens/intro_screen.dart';

class GameBoardScreen extends StatefulWidget {
  static String routeName = "GameBoardScreen";
  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  List<String> boardState = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    ///Hna receive el data from intro screen
GameBoardArgument arg=ModalRoute.of(context)!.settings.arguments as GameBoardArgument;
    return Scaffold(
      appBar: AppBar(title: Text("My XO Game")),
      body: Column(
        children: [
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Text("Player 1 : $player1Score ",
            Text("${arg.p1} : $player1Score",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  //Text("Player 2 : $player2Score ",
                     Text("${arg.p2} :$player2Score" ,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ]),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: boardState[0],
                  onClick: onButtonClicked,
                  index: 0,
                ),
                XoButton(
                    symbol: boardState[1], onClick: onButtonClicked, index: 1),
                XoButton(
                    symbol: boardState[2], onClick: onButtonClicked, index: 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: boardState[3],
                  onClick: onButtonClicked,
                  index: 3,
                ),
                XoButton(
                  symbol: boardState[4],
                  onClick: onButtonClicked,
                  index: 4,
                ),
                XoButton(
                  symbol: boardState[5],
                  onClick: onButtonClicked,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: boardState[6],
                  onClick: onButtonClicked,
                  index: 6,
                ),
                XoButton(
                  symbol: boardState[7],
                  onClick: onButtonClicked,
                  index: 7,
                ),
                XoButton(
                  symbol: boardState[8],
                  onClick: onButtonClicked,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;
  onButtonClicked(int index) {
    ///Draw
    if (boardState[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "O" : "X";
    boardState[index] = symbol;
    setState(() {});

    ///If player1 or player2 win
    if (checkWinner(symbol)) {
      if (symbol == "O") {
        player1Score++;
      } else {
        player2Score++;
      }
      counter = 0;
      boardState = [
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
      ];
      setState(() {});
      return;
    }

    ///In case of filled game
    if (counter == 8) {
      boardState = [
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
      ];
      counter = 0;
      setState(() {});
      return;
    }
    counter++;
  }

  bool checkWinner(String symbol) {
    /*-------------------------------------------------------------------------
    if(boardState[0]==symbol && boardState[1]==symbol && boardState[2]==symbol)
      {
        return true;
      }
    if(boardState[3]==symbol && boardState[4]==symbol && boardState[5]==symbol)
    {
      return true;
    }
    if(boardState[6]==symbol && boardState[7]==symbol && boardState[8]==symbol)
    {
      return true;
    }
    --------------------------------------------------------------------------*/
    ///The below FOR loop replacement the above conditions
    for (int i = 0; i < 7; i += 3) {
      if (boardState[i] == symbol &&
          boardState[i + 1] == symbol &&
          boardState[i + 2] == symbol) {
        return true;
      }
    }
/*-------------------------------------------------------------------------
    if(boardState[0]==symbol && boardState[3]==symbol && boardState[6]==symbol)
    {
      return true;
    }
    if(boardState[1]==symbol && boardState[4]==symbol && boardState[7]==symbol)
    {
      return true;
    }
    if(boardState[2]==symbol && boardState[5]==symbol && boardState[8]==symbol)
    {
      return true;
    }
    ------------------------------------------------------------------------*/
    ///The below FOR loop replacement the above conditions
    for (int i = 0; i < 3; i++) {
      if (boardState[i] == symbol &&
          boardState[i + 3] == symbol &&
          boardState[i + 6] == symbol) {
        return true;
      }
    }
    if (boardState[0] == symbol &&
        boardState[4] == symbol &&
        boardState[8] == symbol) {
      return true;
    }
    if (boardState[2] == symbol &&
        boardState[4] == symbol &&
        boardState[6] == symbol) {
      return true;
    }
    return false;
  }
}
