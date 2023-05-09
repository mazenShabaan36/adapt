import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adapt/screens/Cat/screens/Show_choice.dart';
import 'package:adapt/screens/dog/screensD/show_choice_dog.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.bottomCenter,
            stops: [
              0.3,
              0.85
            ],
            colors: [
              Colors.pink.shade200,
              Colors.blue.shade200,
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.009),
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                  //     color: Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.2,
                )),
            backgroundColor: Colors.transparent),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Know your Pet well with us",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                            blurRadius:
                                MediaQuery.of(context).size.height * 0.008,
                            color: Colors.black,
                            offset: Offset(0, 5))
                      ],
                      color: Colors.cyan.shade500,
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                  Text(
                    "Choose your pet",
                    style: TextStyle(
                        color: Colors.brown.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      Flexible(
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Card(
                            // width: MediaQuery.of(context).size.width *0.5 ,
                            elevation: 0,
                            color: Colors.transparent,
                            // ignore: deprecated_member_use
                            child: InkWell(
                                onTap: () {
                                  AudioCache().play(
                                      'meow.mp3'); //we dont pt assets with audio
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const show_choice()),
                                  );
                                },
                                child: Ink.image(
                                  //colorFilter:
                                  //  ColorFilter.srgbToLinearGamma(),

                                  image: AssetImage(
                                    'assets/cat-unscreen.gif',

                                    //height: MediaQuery.of(context).size.height * 0.5,
                                    //width: MediaQuery.of(context).size.width * 0.5
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  fit: BoxFit.none,
                                )),
                          ),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Flexible(
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Card(
                            //width: MediaQuery.of(context).size.width *0.5 ,
                            elevation: 0,
                            color: Colors.transparent,

                            // ignore: deprecated_member_use
                            child: InkWell(
                              onTap: () {
                                AudioCache().play('dogSound.mp3');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const show_choice_dog()),
                                );
                              },
                              child: Ink.image(
                                colorFilter: ColorFilter.srgbToLinearGamma(),
                                image: AssetImage(
                                  'assets/dogFF-unscreen.gif',
                                  // height: MediaQuery.of(context).size.height * 0.5,
                                  // width: MediaQuery.of(context).size.width * 0.5,
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width * 0.5,
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
           gradient: LinearGradient(
            begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.bottomCenter,
            stops: [
              0.3,
              0.85
            ],
            colors: [
              Colors.pink.shade200,
              Colors.blue.shade200,
            ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

              SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Center(
              child: Text(
                "Adapt don\'t buy",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  //  fontStyle: FontStyle.italic,
                  color: Colors.white70,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                  'assets/logo.png',
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}