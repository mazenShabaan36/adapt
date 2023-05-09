import 'package:adapt/screens/Locations/screens/showLocationD.dart';
import 'package:flutter/material.dart';

class LChoice {
  final String choiceL;
  const LChoice(this.choiceL);
}

const List<LChoice> lc = const <LChoice>[
  LChoice("Clincs"),
  LChoice("Pets Shop")
];

class choice_locations_cat extends StatelessWidget {
  final LChoice lc;
  const choice_locations_cat(this.lc);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (lc.choiceL == "Clincs") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const show_location_dog()),
          );
        }

        if (lc.choiceL == "Pets Shop") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const show_location_dog()),
          );
        }
      },
      child: Card(
        color: Colors.transparent,
        elevation: 0,

        // margin: EdgeInsets.all(MediaQuery.of(context).size.height *0.04),
        child: Stack(children: [
          Center(
            child: Image.asset(
              'assets/catH3.png',
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.55,
              fit: BoxFit.cover,
               color: Colors.blueAccent,
            ),
          ),
          Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(0 / 360),
                    child: //Padding(
                        //padding: const EdgeInsets.only(left: 0, top: 0),
                        //child:
                        Text(
                      lc.choiceL,
                      style: TextStyle(
                          shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.042),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
