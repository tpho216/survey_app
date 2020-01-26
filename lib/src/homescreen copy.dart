import 'package:flutter/material.dart';
import 'package:survey_app/src/firstquestion.dart';
import './firstscreen.dart';
import './lastscreen.dart';
import './thirdscreen.dart';
import './secondscreen.dart';
import 'package:flutter/services.dart';
import './firstquestion.dart';
import './fourthscreen.dart';

class MySurveyApp extends StatelessWidget {

@override
Widget build(BuildContext context) {

  // Set landscape orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  return MaterialApp(

      title: 'Life-Style Survey',
      home: HomeScreen(),
      theme: ThemeData(fontFamily: 'Bunya'),
      routes: {
        FirstScreen.routeName: (context) =>
            FirstScreen(),
        LastScreen.routeName: (context) =>
            LastScreen(),
        SecondScreen.routeName: (context) =>
            SecondScreen(),
        ThirdScreen.routeName: (context) =>
            ThirdScreen(),
        FirstQuestion.routeName: (context) =>
            FirstQuestion(),
        FourthScreen.routeName: (context) =>
            FourthScreen()
      }
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const routeName = '/homescreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          
          home: Scaffold(
            body: surveyLayout(context),
          ),
        );
  }
}

Widget surveyLayout(context) {
  return
      Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 40,
          right: 40,
          bottom: 40,
        ),
      child: Row(
        children: [         
          Expanded(
            flex: 6,
            child: Container(
              child: Image.asset('assets/lifestyle.jpg'),  
              color: Colors.grey[50],
            ),
          ),
          
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.grey[50],
              child: Column(
                children: <Widget>[
                  Expanded(flex: 6, 
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset('assets/popcorn_logo.PNG'),  
                        ),
                        Positioned(
                          top: 100,
                          left: 30,
                          child: 
                            Text('Lifestyle and \nEvent Research', style: TextStyle(color: Colors.black, fontFamily: 'the_skinny', fontSize: 40.0,))
                        )
                      ]
                    )
                  ),

                  Expanded(flex: 4, 
                  child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 30,
                          child: 
                            RaisedButton(
                              child:  Text('Start Survey', style: new TextStyle(fontFamily: 'Soul', fontSize: 50.0,)), onPressed: () 
                                { Navigator.pushNamed(
                                    context,
                                    FirstQuestion.routeName,
                                 );
                                },
                            ),
                        )
                      ]
                    )
                  )
                
                ],
              )
            ),
          ),
        ],
      
    ),
  );

}