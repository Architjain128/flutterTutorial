import 'package:flutter/material.dart';
import "../constant.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  //arrow function
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(HomePageTitle)),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/stateless'),
                  child: const Text('Stateless Widget'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), textStyle: const TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/statefull'),
                  child: const Text('Statefull Widget'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), textStyle: const TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/navigation'),
                  child: const Text('Navigation Methods'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20), textStyle: const TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      );
}
