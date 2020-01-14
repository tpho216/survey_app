import 'package:flutter/material.dart';
import 'package:survey_app/src/firstquestion.dart';
import './firstquestion.dart';


// A Widget that accepts the necessary arguments via the constructor.

class LastScreen extends StatelessWidget {
  static const routeName = '/lastscreen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thank You For taking The Survey', 
              style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
                ),

          ],
        ),
      ),
    );
  }

}