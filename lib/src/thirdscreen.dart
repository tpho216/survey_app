import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// A Widget that accepts the necessary arguments via the constructor.
class ThirdScreen extends StatefulWidget {
  static const routeName = '/thirdscreen';

  @override
_ThirdQuestionState createState() => _ThirdQuestionState();

}

  
class _ThirdQuestionState extends State<ThirdScreen> {
  
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
 

    return Scaffold(
      body: Column(
        children:[
          Text(
            'How much Do You Like Australian Culture?', 
            style: new TextStyle(
              fontFamily: 'Bunya',
              fontSize: 50.0,)
              ),

          RatingBar(
            initialRating: 3,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full:Image.asset('assets/heart.png'),
              half: Image.asset('assets/heart_half.png'),
              empty: Image.asset('assets/heart_border.png')
            ),
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )

        ] 
      ),       
    );
  }
}