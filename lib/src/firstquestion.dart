import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './firstscreen.dart';
import './thirdscreen.dart';


class FirstQuestion extends StatelessWidget {
  static const routeName = '/firstquestion';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Do you have a religion in Australia?', 
              style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
                ),
            // A button that navigates to a named route that. The named route
            // extracts the arguments by itself.
            RaisedButton(
              child: Text(
                "Yes!",
                style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
              ),
              onPressed: () {
                // When the user taps the button, navigate to a named route
                // and provide the arguments as an optional parameter.
                Navigator.pushNamed(
                  context,
                  FirstScreen.routeName,
                );
              },
            ),
            
            RaisedButton(
              child: Text(
                "No",
                style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                );
              },
            ),

          ],
        ),
      ),
    );
  }


}