import 'package:flutter/material.dart';
import 'dart:math';

class AMAapp extends StatelessWidget {
  const AMAapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask me Anything')),
          backgroundColor: Colors.blue[900],
        ),
        body: AMA(),
      ),
    );
  }
}

class AMA extends StatefulWidget {
  const AMA({Key? key}) : super(key: key);

  @override
  _AMAState createState() => _AMAState();
}

class _AMAState extends State<AMA> {
  int ballState = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ballState = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballState.png')))
        ],
      ),
    );
  }
}
