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

class choice_locations extends StatelessWidget {
  final LChoice lc;
  const choice_locations(this.lc);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (lc.choiceL=="Clincs"){
           Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const show_location_dog()),
                                    );

        }
        if (lc.choiceL=="Pets Shop"){
            Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const show_location_dog()),
                                    );

          
        }
      },
      child: Card(
        color: Colors.transparent,
        
        elevation: 0,
        child: Stack(children: [
          Center(
            child: Image.asset(
              'assets/catH3.png',
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.6,
             color: Colors.blueAccent,
              fit: BoxFit.cover,
              
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
                    turns: AlwaysStoppedAnimation(360/360),//MediaQuery.of(context).size.aspectRatio*2),
                    child: Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.0007,top: MediaQuery.of(context).size.height*0.01),
                      child: Text(
                        lc.choiceL,
                        style: TextStyle(  shadows: [
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
        ]),
      ),
    );
  }
}
