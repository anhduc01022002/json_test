import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.star,
                size: 120,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
