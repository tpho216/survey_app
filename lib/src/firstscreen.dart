import 'package:flutter/material.dart';
import './thirdscreen.dart';
import './fourthscreen.dart';

// A Widget that extracts the necessary arguments from the ModalRoute.
class FirstQuestionScreen extends StatelessWidget {
  static const routeName = '/firstscreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.

    return Scaffold(

      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("What religion is it?"),
            // A button that navigates to a named route that. The named route
            // extracts the arguments by itself.
            RaisedButton(
              child: Text("Christianity"),
              onPressed: () {
                // When the user taps the button, navigate to a named route
                // and provide the arguments as an optional parameter.
                Navigator.pushNamed(
                  context,
                  ThirdQuestionScreen.routeName,
                );
              },
            ),
            
            RaisedButton(
              child: Text("Buddhism"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  FourthQuestionScreen.routeName,
                );
              },
            ),
          ],
      ),
    ),
  );
}
}
