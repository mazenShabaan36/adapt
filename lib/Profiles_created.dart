import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:adapt/screens/dog/screensD/profile_show_dog.dart';

Widget textView = Text("");
int curr_index = 0;
var x;

class Profile_created extends StatefulWidget {
  const Profile_created({Key? key}) : super(key: key);

  @override
  State<Profile_created> createState() => _Profile_createdState();
}

class _Profile_createdState extends State<Profile_created> {
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
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.009),
                child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height * 0.3),
                child: Swiper(
                  itemCount: data.length,
                  viewportFraction: 0.7,
                  scale: 0.8,
                  onIndexChanged: (index) {
                    setState(() {
                      curr_index = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    imgList[index].contains('https')
                        ? x = new Image.network(
                            imgList[index],
                            fit: BoxFit.fill,
                          )
                        : x = new Image.file(File(imgList[index]));

                    return x;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(20),),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your pet : ${data[curr_index][0]}\n \nage : ${data[curr_index][1]}\n \nvaccinated :${data[curr_index][2]}\n \nvaccine date : ${data[curr_index][3]} ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
