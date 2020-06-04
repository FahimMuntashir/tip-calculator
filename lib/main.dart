import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TipCalculator(),
    );
  }
}

class TipCalculator extends StatefulWidget {
  @override
  _TipCalculatorState createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double __billAmount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4EA5D2),
        title: Text('Tip Calculator'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
        color: Colors.white10,
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.teal.withOpacity(.3),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Total Per Person'),
                      Text('\$168'),
                    ],
                  ),
                ),),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.blueGrey.shade100,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(16.0),

              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:TextInputType.numberWithOptions(decimal: true) ,
                    style: TextStyle(color: Colors.teal),
                    decoration: InputDecoration(
//                      prefixText: ('Bill Amount'),
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                    onChanged: (String value){
                      try{
                        __billAmount = double.parse(value);
                      }
                      catch(exception){
                        __billAmount = 0.0;
                      }
                    },

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
