// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
   Widget Calculatorbtn (String btntx, Color btncl, Color txcl)
  {


return Container(
 
    child: ElevatedButton(onPressed: () {},
     child: Text(btntx, style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w800,
      color: Colors.black
     ),
     ),
    style: ElevatedButton.styleFrom(
      backgroundColor: btncl,
      fixedSize: Size(63, 63),
      shape: CircleBorder(),
      padding: EdgeInsets.all(20)
      ),
     ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,


body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5),
  child: Column( mainAxisAlignment: MainAxisAlignment.end,
    children: [ 
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [ 
          Padding(padding: EdgeInsets.all(8),
          child: Text("0",textAlign: TextAlign.left,
          style:TextStyle(
            color: Colors.white,
            fontSize: 100,
          ) ,),
          ),
          
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Calculatorbtn('AC', Colors.grey, Colors.black),
          Calculatorbtn("+/-", Colors.grey, Colors.black),
          Calculatorbtn('%', Colors.grey, Colors.black),
          Calculatorbtn('÷', Colors.amber.shade700, Colors.white)
        ],
      ),
      SizedBox(height: 4,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Calculatorbtn('7', Colors.grey, Colors.black),
          Calculatorbtn("8", Colors.grey, Colors.black),
          Calculatorbtn('9', Colors.grey, Colors.black),
          Calculatorbtn('×', Colors.amber.shade700, Colors.white)
        ],
      ),
SizedBox(height: 4,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Calculatorbtn('4', Colors.grey, Colors.black),
          Calculatorbtn("5", Colors.grey, Colors.black),
          Calculatorbtn('6', Colors.grey, Colors.black),
          Calculatorbtn('-', Colors.amber.shade700, Colors.white)
        ],
      ),
SizedBox(height: 4,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Calculatorbtn('1', Colors.grey, Colors.black),
          Calculatorbtn("2", Colors.grey, Colors.black),
          Calculatorbtn('3', Colors.grey, Colors.black),
          Calculatorbtn('+', Colors.amber.shade700, Colors.white)
        ],
      ),
SizedBox(height: 4,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(onPressed: (){}, child: Text('0',
          style: TextStyle(fontSize: 35,
          color:Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: Colors.grey,
            padding: EdgeInsets.fromLTRB(15,12,70,10)
          ),),
          Calculatorbtn('.', Colors.grey, Colors.black),
          Calculatorbtn('=', Colors.amber.shade700, Colors.white)
        ],
      ),
    ],
  ),
)

    );
  }
}