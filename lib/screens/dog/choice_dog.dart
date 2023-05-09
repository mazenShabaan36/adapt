import 'package:adapt/screens/Locations/screens/show_choice_locations.dart';
import 'package:adapt/screens/Marriage/showFind.dart';
import 'package:adapt/screens/buySell/show_sell.dart';
import 'package:adapt/screens/dog/screensD/profile_show_dog.dart';
import 'package:adapt/screens/Locations/screens/showLocationD.dart';
import 'package:adapt/screens/dog/screensD/show_FirstAid_dog.dart';
import 'package:flutter/material.dart';

class Choice {
  const Choice(this.title);
  final String title;
}

const List<Choice> choices_dog = const <Choice>[
  const Choice("Profile"),
  const Choice("First Aid"),
  const Choice("PMS"),
  const Choice("Location"),
  const Choice("Buy&Sell"),
  const Choice("Marriage"),

];

class SelectCard_dog extends StatelessWidget {
  const SelectCard_dog(this.choice);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return GestureDetector(
      onTap: () {
        if (choice.title == "Profile") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => profile_form_dog()));
        }
        if (choice.title == "Buy&Sell") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => show_sell()));
      }
      if (choice.title == "Marriage") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => showFind()));
        }
        if (choice.title == "First Aid") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Show_firstAidD()));
        }
        if (choice.title == "Location") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => show_choice_Locations()));
        }
      },
      child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Stack(
            children:[ 
              Image.asset(
                'assets/dogH2.png',
               // height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width ,
                color: Colors.brown.shade700,
                 fit: BoxFit.cover,
              )
              ,Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(330/360),//MediaQuery.of(context).size.aspectRatio*2),
                      child: Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06,top: MediaQuery.of(context).size.height*0.0098),
                        // 
                        child: Text(
                          choice.title,
                          style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.048),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ]),
            ),
          ]
          ),
          ),
    );
  }
}
