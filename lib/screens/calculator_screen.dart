import 'package:flutter/material.dart';
import 'package:flutter_project/components/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static String routeName = "CalculatorScreen";
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  //int counter = 0;
  String resultText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(children: [
                Text(
                  resultText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ]),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "9", onClick: onDigitClicked),
                CalculatorButton(digit: "8", onClick: onDigitClicked),
                CalculatorButton(digit: "7", onClick: onDigitClicked),
                CalculatorButton(digit: "+", onClick: onOperatorClicked),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "6", onClick: onDigitClicked),
                CalculatorButton(digit: "5", onClick: onDigitClicked),
                CalculatorButton(digit: "4", onClick: onDigitClicked),
                CalculatorButton(digit: "-", onClick: onOperatorClicked),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "3", onClick: onDigitClicked),
                CalculatorButton(digit: "2", onClick: onDigitClicked),
                CalculatorButton(digit: "1", onClick: onDigitClicked),
                CalculatorButton(digit: "*", onClick: onOperatorClicked),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: ".", onClick: onDigitClicked),
                CalculatorButton(digit: "0", onClick: onDigitClicked),
                CalculatorButton(digit: "=", onClick: onEqualClicked),
                CalculatorButton(digit: "/", onClick: onOperatorClicked),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /*{
    return Scaffold(
      appBar: AppBar(
        title:const Text("My Calculator"),
      ),
      body:
      Column(children: [
        Expanded(
          child: Center(
            child: Text("$counter"),
          ),
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: (){
              counter++;
              setState(() {
              });
              print(counter);
            }, child: Icon(Icons.add)),
            SizedBox(width:50 ,),
            ElevatedButton(onPressed: (){
              counter--;
              setState(() {});
              print(counter);
            }, child: Icon(Icons.remove))
          ]),
      ]),


      */
/*floatingActionButton: FloatingActionButton(
          child:const Icon(Icons.add),
          onPressed: () {
            counter++;
            setState(() {});
            print(counter);
          }),
    );
  }*/
  onDigitClicked(String digit) {
    if(digit=="." && resultText.contains("."))
      {
        return;
      }/*else if(resultText.isNotEmpty)
        {
          return;
        }*/
    setState(() {
      resultText += digit;
    });
  }

  String lhs = "";
  String operator = "";
  onOperatorClicked(String clickedOperator) {
    if (operator.isEmpty) {
      lhs = resultText;
      operator = clickedOperator;
      setState(() {
        resultText = "";
      });
    } else {
      lhs = calculate(double.parse(lhs), operator, double.parse(resultText));
      operator = clickedOperator;
      setState(() {
        resultText = "";
      });
    }
    print("lhs: $lhs , saved operator :$operator");
  }

  onEqualClicked() {
    setState(() {
      resultText=calculate(double.parse(lhs), operator, double.parse(resultText));
      lhs="";
      operator="";
    });
  }

  String calculate(double lhs, String operator, double rhs) {
    if (operator == "+") {
      return (lhs + rhs).toString();
    } else if (operator == "-") {
      return (lhs - rhs).toString();
    } else if (operator == "*") {
      return (lhs * rhs).toString();
    } else {
      return (lhs / rhs).toString();
    }
  }
}
