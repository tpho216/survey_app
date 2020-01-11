import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './homescreen.dart';
// A Widget that accepts the necessary arguments via the constructor.

// A Widget that accepts the necessary arguments via the constructor.
class SecondScreen extends StatefulWidget {
  static const routeName = '/secondscreen';
  SecondScreen({Key key}) : super(key: key);

  @override
_SecondQuestionState createState() => _SecondQuestionState();

}
enum SingingCharacter { readbible, prayer, fellowship }
  
class _SecondQuestionState extends State<SecondScreen> {
  
  SingingCharacter _character = SingingCharacter.readbible;

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
  
    return Scaffold(
      body: Column(
        children:[
          Text(
            'What do you Most Like to Do in Your Christianity?', 
            style: new TextStyle(
              fontFamily: 'Bunya',
              fontSize: 50.0,)
              ),

          RadioListTile<SingingCharacter>(
           title: const Text(
            'Reading the Bible', 
            style: TextStyle(
              fontFamily: 'Bunya',
              fontSize: 30.0,)
              ),
            value: SingingCharacter.readbible,
            groupValue: _character,
            onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
          ),

          RadioListTile<SingingCharacter>(
            title: const Text(
            'Prayer', 
            style: TextStyle(
              fontFamily: 'Bunya',
              fontSize: 30.0,)
              ),
            value: SingingCharacter.fellowship,
            groupValue: _character,
            onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
          ),

         RadioListTile<SingingCharacter>(
            title: const Text(
            'Fellowship with other Christian', 
            style: TextStyle(
              fontFamily: 'Bunya',
              fontSize: 30.0,)
              ),
            value: SingingCharacter.prayer,
            groupValue: _character,
            onChanged: (SingingCharacter value) { setState(() { _character = value; }); },
          ),

          RaisedButton(
              child: Text(
                "Thank You for your Precious Help",
                style: new TextStyle(
                fontFamily: 'Bunya',
                fontSize: 20.0,)
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  HomeScreen.routeName,
                );
              },
            ),

        ] 
      ),       
    );
  }
}