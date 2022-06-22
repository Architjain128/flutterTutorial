import 'package:flutter/material.dart';
import "./statelessExample.dart";
import "./homePage.dart";

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Navigation Page'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('Navigate using routes'),
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20), textStyle: TextStyle(fontSize: 20)),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ),
                    child: Text('Navigate using push method'),
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20), textStyle: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
