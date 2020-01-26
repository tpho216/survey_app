import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:survey_app/src/firstscreen.dart';

class FirstQuestion extends StatefulWidget {  
  static const routeName = '/firstquestion';
  

   
  @override 
  FirstQuestionState createState() => new FirstQuestionState();
  
}
class FirstQuestionState extends State {
  
   Map<String, bool> values = {
    'Australian Citizen': false,
    'Student/ Worker': false,
    'Sports': false,
    'Travel': false,
    'Christian/Catholic': false,
    'Buddhist': false,
    'Hindu': false,
    'Introvert': false,
    'Extrovert': false,
  };
  
  var tmpArray = [];

   getCheckboxItems(){
 
    values.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key); 
      }
  });
 // Printing all selected items on Terminal screen.
  print(tmpArray);
  // Here you will get all your selected Checkbox items.
 
  // Clear array after use.
  tmpArray.clear();
}
 
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold( 

      body: Padding(
      //backgroundColor: Colors.grey[50],

        padding: const EdgeInsets.only(
          left: 40,
          top: 40,
          right: 40,
          bottom: 20,
        ),
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            
            RaisedButton(
              child: Text("Select Lifestyles You Relate Most ", style: TextStyle(fontSize: 18),),
              onPressed: getCheckboxItems,
              color: Colors.deepOrange,
              textColor: Colors.white,
              splashColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          
            Expanded( 
              flex: 8,
              child :
              ListView(
                children: values.keys.map((String key) {
                  return new CheckboxListTile(
                    title: new Text(key),
                    value: values[key],
                    activeColor: Colors.pink,
                    checkColor: Colors.white,
                    onChanged: (bool value) {
                      setState(() {
                        values[key] = value;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
      
            Expanded(flex: 2, 
                  child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: 
                            RaisedButton(
                              child:  Text('Next Question', style: new TextStyle(fontFamily: 'Soul', fontSize: 20.0,)), onPressed: () 
                                { Navigator.pushNamed(
                                    context,
                                    FirstScreen.routeName,
                                 );
                                },
                            ),
                        )
                      ]
                    )
                  )


            /*Expanded(
              flex: 2,
                child: Container(
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
                          ]
                        ),
                      ),

                    ]
                  )
                )
              )  */
          ],
        ),
      ),
    );
  }
}