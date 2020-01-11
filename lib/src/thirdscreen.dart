import 'package:flutter/material.dart';
// A Widget that accepts the necessary arguments via the constructor.
class ThirdQuestionScreen extends StatelessWidget {
   static const routeName = '/thirdscreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.

    return Scaffold(
      appBar: AppBar(
        title: Text('ll?'),
      ),
      body: Center(
        child: Text('What?'),
      ),
    );
  }
}