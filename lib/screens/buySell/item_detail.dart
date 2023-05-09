import 'dart:io';

import 'package:adapt/screens/buySell/buySell.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class item_detail extends StatelessWidget {
  String item;
  item_detail(this.item);

  @override
  Widget build(BuildContext context) {
    int data = pets.indexWhere((element) => element.title == item);
    print(data);
    return Container(
        decoration:BoxDecoration(
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
            label: Text("Contact Me") ,
            icon:Icon(Icons.contact_phone_outlined) ,
            onPressed: ()=>launch("http://wa.me/+2${pets[data].contactNumber}", forceSafariVC: false),
            backgroundColor: Colors.pinkAccent,
            ),
          appBar: AppBar(
              elevation: 0.0,
              leading: Padding(
                  padding:EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                  child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
              backgroundColor: Colors.transparent),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   
                    pets[data].photo.contains('assets')?  
                    Image.asset(pets[data].photo,fit: BoxFit.fill,
                     height: MediaQuery.of(context).size.height * 0.30,
                    width:MediaQuery.of(context).size.width*2 ,):
                     Image.file(File(pets[data].photo),
                  height: MediaQuery.of(context).size.height * 0.30,
                   width: MediaQuery.of(context).size.width*2,
                   fit: BoxFit.fill,) ,
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Text(
                      "Owner Name : ${pets[data].ownerName}",
                      style: TextStyle(  shadows: [
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
                      "Contact Number : ${pets[data].contactNumber}",
                      style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.06),
                          textAlign: TextAlign.left,
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      "Price : ${pets[data].price}",
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
                      "Pet Type : ${pets[data].typeP}",
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
