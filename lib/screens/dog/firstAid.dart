import 'package:flutter/material.dart';

class firstAid {
  const firstAid(this.name);
  final String name;
 
}

class Selected_firstAid extends StatelessWidget {
  const Selected_firstAid(this.fa);
  final firstAid fa;
  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    //final TextStyle? textStyle2 = Theme.of(context).textTheme.subtitle2;
    return Card(
          color: Colors.transparent,
          elevation: 0,
          child: Stack(
            children:[ 
              Image.asset(
                'assets/catH3.png',
                height: MediaQuery.of(context).size.height * 2,
                width: MediaQuery.of(context).size.width *3,
                color: Colors.blue,
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
                      turns: AlwaysStoppedAnimation(360/360),//MediaQuery.of(context).size.aspectRatio*2),
                      child: Padding(
                        padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.025 ,top: MediaQuery.of(context).size.height*0.01),
                        child: Text(
                          fa.name,
                          style: TextStyle(  shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.061),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ]),
            ),
          ]
          ),
          );
  }
}
