import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Ball(),
    ),
  );
}

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask my anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body:BodyPart(),
    );
  }
}
class BodyPart extends StatefulWidget {
  @override
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {

  int number =1;
  void change(){
    number = Random().nextInt(5) + 1;
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    change();
                  });
                },
                child: Image.asset('images/ball$number.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



