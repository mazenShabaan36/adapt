import 'dart:io';

import 'package:adapt/screens/Marriage/find.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class marriage_detail extends StatelessWidget {
  String item;
  marriage_detail(this.item);

  @override
  Widget build(BuildContext context) {
    int data = marry.indexWhere((element) => element.petN == item);
    print(data);
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
          floatingActionButton: FloatingActionButton.extended(
            label: Text("Contact Me"),
            icon: Icon(Icons.contact_phone_outlined),
            onPressed:
              ()=>launch("http://wa.me/+2${marry[data].contactN}", forceSafariVC: false),
            
            backgroundColor: Colors.pinkAccent,
          ),
          appBar: AppBar(
              elevation: 0.0,
              leading: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                  child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
              backgroundColor: Colors.transparent),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     marry[data].photoId.contains("assets")?
                    Image.asset(marry[data].photoId,
                     height: MediaQuery.of(context).size.height * 0.30,
                     width: MediaQuery.of(context).size.width *2,
                      fit: BoxFit.fill):
                  
                  Image.file(File(marry[data].photoId),
                   height: MediaQuery.of(context).size.height * 0.30,
                     width: MediaQuery.of(context).size.width *2,
                      fit: BoxFit.fill),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Owner Name : ${marry[data].OwnerNameM}",
                      style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.09),
                          textAlign: TextAlign.left,
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      "Contact Number : ${marry[data].contactN}", //marry[data].contactNumber
                      style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.065),
                          textAlign: TextAlign.left,
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Price : ${marry[data].gender}",
                      style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.09),
                          textAlign: TextAlign.left,
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Pet Name : ${marry[data].petN}",
                      style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.09),
                          textAlign: TextAlign.left,
                        ),
                  ]),
            ),
          ),
        ));
  }
}
