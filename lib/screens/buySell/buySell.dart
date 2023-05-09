import 'dart:io';

import 'package:adapt/screens/buySell/item_detail.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class sellD {
  sellD(this.ownerName, this.contactNumber, this.title, this.price, this.photo,
      this.typeP);
  String ownerName;
  String contactNumber;
  String title;
  String price;
  String photo;
  String typeP;
}

List<sellD> pets = <sellD>[
  sellD("Mazen", "01123327041", "Max", "30\$", "assets/dog2.jpg", "dog")
  // Image.asset(
  //   "assets/dog2.jpg",
  //   height: 100,
  //   width: 200,
  //   fit: BoxFit.fill,
  // )),
  ,
  sellD("sara", "01205799325", "bella", "40\$", "assets/cat1.jpg", "cat"),
  // Image.asset("assets/cat1.jpg",
  //     height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "rex",
  //     "10\$",
  //     Image.asset("assets/dog1.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "lolo",
  //     "80\$",
  //     Image.asset("assets/cat2.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "lolo",
  //     "25\$",
  //     Image.asset("assets/cat2.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "lolo",
  //     "12\$",
  //     Image.asset("assets/cat2.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "lolo",
  //     "7\$",
  //     Image.asset("assets/cat2.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
  // sellD(
  //     "lolo",
  //     "4\$",
  //     Image.asset("assets/cat2.jpg",
  //         height: 100, width: 200, fit: BoxFit.fill)),
];

class SelectSell extends StatelessWidget {
  const SelectSell(this.sell);
  final sellD sell;

  @override
  Widget build(BuildContext context) {
    print(sell.photo);
    //final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => item_detail(sell.title)));

        // if (sell.title == "bella") {
        //   launch("http://wa.me/+201208620262", forceSafariVC: false);
        // }
        // if (sell.title == "rex") {
        //   launch("http://wa.me/+201208620262", forceSafariVC: false);
        // }
        // if (sell.title == "lolo") {
        //   launch("http://wa.me/+201208967347", forceSafariVC: false);
        // }
      },
      child: Card(
          color: Colors.pinkAccent,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  sell.photo.contains("assets")?
                    Image.asset(sell.photo,
                     height: MediaQuery.of(context).size.height * 0.1,
                     width: MediaQuery.of(context).size.width * 2,
                      fit: BoxFit.fill):
                  
                  Image.file(File(sell.photo),
                  height: MediaQuery.of(context).size.height * 0.1,
                   width: MediaQuery.of(context).size.width*2,
                   fit: BoxFit.fill,),
                    //  height: MediaQuery.of(context).size.height * 0.1,
                      // width: 200,
                      // fit: BoxFit.fill),
                  // Image.asset(sell.photo,
                  //     height: MediaQuery.of(context).size.height * 0.1,
                  //     width: 200,
                  //     fit: BoxFit.fill),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    sell.title,
                    style: TextStyle(  shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.065),
                          textAlign: TextAlign.center,
                        ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    sell.price,
                    style: TextStyle(  shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.051),
                          textAlign: TextAlign.center,
                        ),
                ]),
          )),
    );
  }
}
