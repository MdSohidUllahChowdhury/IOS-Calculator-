// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  
  //! Create a Widget 
  Widget Calculatorbtn(
    String btntx,
     Color btncl,
      Color txcl) {
    return Container(
      child: ElevatedButton(
        onPressed: ((){
          calculation(btntx);
        }) ,
         child: Text(
          btntx,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white),
            ),
        
        style: ElevatedButton.styleFrom(
            backgroundColor: btncl,
            fixedSize: Size(63, 63),
            shape: CircleBorder(),
            padding: EdgeInsets.all(20)),
      ),
    );
  }

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.black,
        
        body:
        
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [ //?Result Section
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                      ),
                    ),
                  ),
                ],
              ),


              Row( //? 1st Row [AC ,+/-, %, /]

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'AC',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade800,
                        fixedSize: Size(63, 63),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20)),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '+/-',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade800,
                        fixedSize: Size(63, 63),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20)),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '%',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade800,
                        fixedSize: Size(63, 63),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20)),
                  ),

                  //Calculatorbtn("AC", Colors.grey.shade800, Colors.black),
                  //Calculatorbtn("+/-", Colors.grey.shade800, Colors.black),
                  //Calculatorbtn('%', Colors.grey.shade800, Colors.black),
                  Calculatorbtn('÷', Colors.amber.shade700, Colors.white)
                ],
              ),
              SizedBox(
                height: 4,
              ),


              Row( //? 2nd Row [7,8,9,*]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbtn('7', Colors.grey.shade800, Colors.white,),
                  Calculatorbtn("8", Colors.grey.shade800, Colors.white),
                  Calculatorbtn('9', Colors.grey.shade800, Colors.white),
                  Calculatorbtn('×', Colors.amber.shade700, Colors.white)
                ],
              ),
              SizedBox(
                height: 4,
              ),


              Row( //? 3rd Row [4,5,6,-]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbtn('4', Colors.grey.shade800, Colors.white),
                  Calculatorbtn("5", Colors.grey.shade800, Colors.white),
                  Calculatorbtn('6', Colors.grey.shade800, Colors.white),
                  Calculatorbtn('-', Colors.amber.shade700, Colors.white)
                ],
              ),
              SizedBox(
                height: 4,
              ),


              Row( //? 4th Row [1,2,3,+]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Calculatorbtn('1', Colors.grey.shade800, Colors.white),
                  Calculatorbtn("2", Colors.grey.shade800, Colors.white),
                  Calculatorbtn('3', Colors.grey.shade800, Colors.white),
                  Calculatorbtn('+', Colors.amber.shade700, Colors.white)
                ],
              ),
              SizedBox(
                height: 4,
              ),


              Row( //? 5th Row [0, . , =]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.grey.shade800,
                        padding: EdgeInsets.fromLTRB(15, 12, 70, 10)),
                  ),
                  Calculatorbtn('.', Colors.grey.shade800, Colors.white),
                  Calculatorbtn('=', Colors.amber.shade700, Colors.white)
                ],
              ),
            ],
          ),
        )
        );      
  }


  //? For Logic Build

        dynamic text = '0';
        double numOne = 0;
        double numTow = 0;

        dynamic result = '';
        dynamic finalresult = '';
        dynamic oparetor = '';
        dynamic preoparetor = '';

        void calculation (btntx){
          if(btntx == 'AC'){
            text = '0';
            numOne = 0;
            numTow = 0;
            result = '';
            finalresult = 0;
            oparetor = '';
            preoparetor = '';
          }
          else if 
          (btntx=='+' ||btntx=='-'||btntx=='×'||btntx=='÷'||btntx=='=')
          {
            if(numOne == 0){
              numOne = double.parse(result);
            }
             else{
              
              numTow= double.parse(result);
            }
            if (oparetor == '+'){
              finalresult = aadd();
            }
            else if(oparetor == '-'){
              finalresult = sub();
              }
              else if(oparetor == '×'){
              finalresult = mul();
              }
              else if(oparetor == '÷'){
              finalresult = div();
              }
              preoparetor = oparetor;
              oparetor = btntx;
              result = '';
              
          }else if (btntx == '%'){
            result = numOne / 100;
            finalresult = containDecimal(result);

          }
          else if (btntx == '.'){
            if(!result.toString().contains('.')){
              result = result.toString() + '.';
            }
            finalresult = result;
          }else if (btntx == '+/-'){
            result.toString().startsWith('-')
            ? result = result.toString().substring(1)
            : result = '-' + result.toString();
          }else {
            result = result + btntx;
            finalresult = result;
          }
          setState(() {
            text = finalresult;
          });
        }
        String aadd(){
          result = (numOne+numTow).toString();
          numOne = double.parse(result);
          return containDecimal(result);
        }
        String sub(){
          result = (numOne-numTow).toString();
          numOne = double.parse(result);
          return containDecimal(result);
        }
        String mul(){
          result = (numOne * numTow).toString();
          numOne = double.parse(result);
          return containDecimal(result);
        }
        String div(){
          result = (numOne/numTow).toString();
          numOne = double.parse(result);
          return containDecimal(result);
        }
String containDecimal (dynamic result){
  if (result.toString().contains('.')){
    List<String> splitDecimal = result.toString().split('.');
    if(!(int.parse(splitDecimal[1])>0)){
      return result = splitDecimal[0].toString();
    }
  }
  return result;
}
}
