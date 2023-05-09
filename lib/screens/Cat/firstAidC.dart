import 'package:flutter/material.dart';

class firstAidC {
  const firstAidC(this.name);
  final String name;
}

class Selected_firstAidC extends StatelessWidget {
  const Selected_firstAidC(this.fa);
  final firstAidC fa;
  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    //final TextStyle? textStyle2 = Theme.of(context).textTheme.subtitle2;
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(children: [
        Image.asset(
          'assets/catH3.png',
          height: MediaQuery.of(context).size.height * 2,
          width: MediaQuery.of(context).size.width * 3,
          fit: BoxFit.cover,
          color: Colors.blueAccent,
        ),
        Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                RotationTransition(
                  turns: AlwaysStoppedAnimation(
                      MediaQuery.of(context).size.aspectRatio /
                          MediaQuery.of(context).size.aspectRatio),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02,
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      fa.name,
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
                          fontSize: MediaQuery.of(context).size.width * 0.06),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
