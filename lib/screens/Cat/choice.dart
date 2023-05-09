
import 'package:adapt/screens/Cat/screens/profile_show.dart';
import 'package:adapt/screens/Cat/screens/show_firstAid_cat.dart';
import 'package:adapt/screens/Locations/screens/show_choice_location_cat.dart';
import 'package:adapt/screens/Marriage/showFind.dart';
import 'package:adapt/screens/buySell/show_sell.dart';
//import 'package:adapt/showLocationD.dart';
import 'package:adapt/screens/Locations/screens/showLocationD.dart';
import 'package:flutter/material.dart';

class Choice {
  const Choice(this.title);
  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice("Profile"),
  const Choice("First Aid"),
  const Choice("PMS"),
  const Choice("Location"),
  const Choice("Buy&Sell"),
  const Choice("Marriage"),
];

class SelectCard extends StatelessWidget {
  const SelectCard(this.choice);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    //final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return GestureDetector(
      onTap: () {
        if (choice.title == "Profile") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => profile_form()));
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
              MaterialPageRoute(builder: (context) => Show_firstAidC()));
        }
        if (choice.title == "Location") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => show_choice_Locations_cat()));
        }
      },
      child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Stack(
            children:[ 
              Image.asset(
                'assets/catH3.png',
                height: MediaQuery.of(context).size.height * 1.5,
                width: MediaQuery.of(context).size.width*2.5 ,
               color: Colors.blueAccent,
                fit: BoxFit.cover,
            //  fit: BoxFit.fill,
              )
              ,Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(360/360),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 10),
                        child: Text(
                          choice.title,
                          style: TextStyle(
                             shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.051),
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
