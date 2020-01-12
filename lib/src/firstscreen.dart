import 'package:flutter/material.dart';
import './thirdscreen.dart';
import './secondscreen.dart';

// A Widget that extracts the necessary arguments from the ModalRoute.
class FirstScreen extends StatelessWidget {
  static const routeName = '/firstscreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

               Text(
              'What Religion is it?', 
              style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
                ),

            RaisedButton(
              child:  Text(
              'Christianity', 
              style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 50.0,)
                ),
              onPressed: () {
                // When the user taps the button, navigate to a named route
                // and provide the arguments as an optional parameter.
                Navigator.pushNamed(
                  context,
                  SecondScreen.routeName,
                );
              },
            ),
            
            RaisedButton(
              child: Text(
              'Buddhism', 
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
          

            
             RaisedButton(
              child: Text(
              'Others', 
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
