import 'package:flutter/material.dart';
// A Widget that accepts the necessary arguments via the constructor.
class SecondQuestionScreen extends StatelessWidget {
   static const routeName = '/secondscreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.

    return Scaffold(
      appBar: AppBar(
        title: Text('Really? man?'),
      ),
      body: Center(
        child: Text('What?'),
      ),
    );
  }
}