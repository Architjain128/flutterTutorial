import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  int _counter = 0;
  String textFromProp;

  StatelessPage({Key? key, required this.textFromProp}) : super(key: key);

  @override
  //normal function
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                child: Text("Arrived from " + textFromProp),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Text("Hi i am Stateless widget"),
                    Text(
                      "Counter value is: " + _counter.toString(),
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        _counter = _counter + 1;
                        print('Counter actual value of stateless widget is: $_counter');
                      },
                      child: Text('Increment'),
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20), textStyle: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Back'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20), textStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
