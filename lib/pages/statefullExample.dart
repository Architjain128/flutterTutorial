import 'package:flutter/material.dart';

class StatefullPage extends StatefulWidget {
  String textFromProp;
  StatefullPage({Key? key, required this.textFromProp}) : super(key: key);

  @override
  _StatefullPageState createState() => _StatefullPageState();
}

class _StatefullPageState extends State<StatefullPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                child: Text("Arrived from " + widget.textFromProp),
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
                    Text("Hi i am Statefull widget"),
                    Text(
                      "Counter value is: " + _counter.toString(),
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = _counter + 1;
                        });
                        print('Counter actual value of statefull widget is: $_counter');
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
