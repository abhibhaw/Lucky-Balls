import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(
              child: Text('Lucky Balls'),
            ),
          ),
          body: Body(),
        ),
      ),
    );

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  answer = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Designed with ',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text(
                  ' by Xori',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
