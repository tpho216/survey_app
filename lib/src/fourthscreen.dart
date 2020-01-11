import 'package:flutter/material.dart';
// A Widget that accepts the necessary arguments via the constructor.
class FourthQuestionScreen extends StatelessWidget {
   static const routeName = '/fourthscreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Question'),
      ),
      body: Center(
        child: Text('4th'),
      ),
    );
  }
}