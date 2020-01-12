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
              'Welcome to Religion and Culture Survey', 
              style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
                ),
            // A button that navigates to a named route that. The named route
            // extracts the arguments by itself.
            RaisedButton(
              child: Text(
                "Take the survey!",
                style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
              ),
              onPressed: () {
                // When the user taps the button, navigate to a named route
                // and provide the arguments as an optional parameter.
                Navigator.pushNamed(
                  context,
                  FirstQuestion.routeName,
                );
              },
            ),

          ],
        ),
      ),
    );
  }

}