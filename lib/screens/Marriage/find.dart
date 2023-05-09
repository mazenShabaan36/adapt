import 'dart:io';

import 'package:adapt/screens/Marriage/Marriage_detail.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class findD {
  findD(this.petN, this.gender, this.Location, this.OwnerNameM, this.photoId,this.contactN);
  String petN;
  String gender;
  String Location;
  String OwnerNameM;
  String photoId;
  String contactN;
  // String contactN,
}

List<findD> marry = <findD>[
  findD("Max", "male", "Victoria", "Mazen", "assets/dog2.jpg","01123327041"),
  findD("bella", "female", "bab Sharqi", "ahmed", "assets/cat1.jpg","01201956999"),
  findD("rex", "male", "El-soyouf", "ali", "assets/dog1.jpg","01284289789"),
  findD("lolo", "female", "bahari", "ibrahem", "assets/cat2.jpg","01123327041"),
  findD("raad", "male", "El-Agami", "sara", "assets/dog2.jpg","01123327041"),
  // findD(
  //     "katie",
  //     "female",
  //     "Sedi-Bishr",
  //     Image.asset("assets/cat1.jpg",
  //         height: 80, width: 200, fit: BoxFit.fill)),
];

class findM extends StatelessWidget {
  const findM(this.marr);
  final findD marr;

  @override
  Widget build(BuildContext context) {
    //final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => marriage_detail(marr.petN)));
      },
      child: Card(
          color: Colors.pinkAccent,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   marr.photoId.contains("assets")?
                    Image.asset(marr.photoId,
                     height: MediaQuery.of(context).size.height * 0.1,
                     width: MediaQuery.of(context).size.width *2,
                      fit: BoxFit.fill):
                  
                  Image.file(File(marr.photoId),
                   height: MediaQuery.of(context).size.height * 0.1,
                     width: MediaQuery.of(context).size.width *2,
                      fit: BoxFit.fill),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    marr.petN,
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    marr.gender,
                    style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.042),
                          textAlign: TextAlign.left,
                        ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    marr.Location,
                    style: TextStyle( shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.032),
                          textAlign: TextAlign.left,
                        ),
                ]),
          )),
    );
  }
}
