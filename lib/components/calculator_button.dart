import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
String digit;
Function onClick;
CalculatorButton({required this.digit,required this.onClick});
  @override
  Widget build(BuildContext context) {
    return 
      Expanded(child:
      Container(
        margin: EdgeInsets.all(2),
        child: ElevatedButton(
          onPressed: (){
            if(digit=="=")
              {
                onClick();
              }else{
            onClick(digit);
          }},
    ///Change in feature branch
          //child: Text("$digit",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25 ),)),
            child: Text("$digit",style: TextStyle(fontWeight: FontWeight.bold,fontSize:14,color: Colors.red ))),
      ));
  }
}
