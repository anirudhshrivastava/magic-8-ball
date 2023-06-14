import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  return runApp(
    MaterialApp(
        home: BallPage(),
    ),
  );
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.blueAccent,
    appBar: AppBar(
    backgroundColor: Colors.blueGrey,
    title: const Center(child: Text('Ask Me Anything')),
    ),
    body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber= Random().nextInt(5)+1;
          });
        }, child: Image.asset('images/ball$ballNumber.png'),

      ),
    );
  }
}

