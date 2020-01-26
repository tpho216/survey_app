import 'package:flutter/material.dart';
import 'package:survey_app/src/lastscreen.dart';
import './thirdscreen.dart';
import './secondscreen.dart';

// A Widget that extracts the necessary arguments from the ModalRoute.
class FirstScreen extends StatelessWidget {
  static const routeName = '/firstscreenhe';

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
          'What Habits do you currently have?', 
          style: new TextStyle(
            fontFamily: 'Bunya',
            fontSize: 50.0,)
            ),
        
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Enter a your current habits'
              ),
              style: TextStyle(fontSize: 30)
            ),

             Expanded(flex: 1, 
                  child: Stack(
                      children: [
                        Positioned(
                          bottom: 20,
                          right: 30,
                          child: 
                            RaisedButton(
                              child:  Text('Finish Survey', style: new TextStyle(fontFamily: 'Soul', fontSize: 50.0,)), onPressed: () 
                                { Navigator.pushNamed(
                                    context,
                                    LastScreen.routeName,
                                 );
                                },
                            ),
                        )
                      ]
                    )
                  )

          ],
      ),
    ),
  );
}
}
