import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationD {
  LocationD(this.title, this.Located, this.photo);
  String title;
  String Located;
  Image photo;
}

List<LocationD> places = <LocationD>[
  LocationD(
      "Pets corner",
      "Bab sharqi",
      Image.asset(
        "assets/corner.jpg",
        height: 100,
        width: 200,
        fit: BoxFit.fill,
      )),
  LocationD(
      "ayman pet",
      "Al Attarin",
      Image.asset("assets/ayman.png",
          height: 100, width: 200, fit: BoxFit.fill)),
  LocationD(
      "Pupps & pets",
      "Sidi gaber",
      Image.asset("assets/pupps.jpg",
          height: 100, width: 200, fit: BoxFit.fill)),
  LocationD(
      "Pets awy",
      "sidi gaber",
      Image.asset("assets/petsawy.jpg",
          height: 100, width: 200, fit: BoxFit.fill)),
];

class SelectLocation_dog extends StatelessWidget {
  const SelectLocation_dog(this.loc);
  final LocationD loc;

  @override
  Widget build(BuildContext context) {
    //final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return GestureDetector(
      onTap: () {
        if (loc.title == "Pets corner") {
          launch(
              "https://www.google.com/maps/dir//6X38%2BG33,+Ezbet+El-Nozha,+Sidi+Gaber,+Alexandria+Governorate+5431115/@31.2037448,29.8951446,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x14f5c4ae49dc1e25:0x908499bc0d7ded10!2m2!1d29.9651848!2d31.2037638",
              forceSafariVC: false);
        }
        if (loc.title == "ayman pet") {
          launch(
              "https://www.google.com/maps?rlz=1C1RLNS_enEG968EG968&lqi=ChNwZXRzIHBsYWNlcyBpbiBhbGV4SMKs4ZSKq4CACFobEAAQARgAIhNwZXRzIHBsYWNlcyBpbiBhbGV4kgEJcGV0X3N0b3JlqgE-CggvbS8wNjhoeRABGh8QASIbdJEvuS-t-C-xQhe7Wb-szQ15Bnv78gsojNrUKg8iC3BldHMgcGxhY2VzKAA&phdesc=o1HU9KboQNA&vet=12ahUKEwj8rKnc7OP8AhUEU6QEHauOCA0Q8UF6BAgDEFQ..i&lei=2LfRY_zgOoSmkdUPq52iaA&cs=1&um=1&ie=UTF-8&fb=1&gl=eg&sa=X&geocode=Kauqqsl-xPUUMWpA4V9pq38R&daddr=Ahmed+Kamha,+Al+Azaritah+WA+Ash+Shatebi,+Bab+Sharqi,+Alexandria+Governorate+5423052",
              forceSafariVC: false);
        }
        if (loc.title == "Pupps & pets") {
          launch(
              "https://www.google.com/maps?rlz=1C1RLNS_enEG968EG968&lqi=ChNwZXRzIHBsYWNlcyBpbiBhbGV4SJGhyOzkt4CACFobEAAQARgAIhNwZXRzIHBsYWNlcyBpbiBhbGV4kgEJcGV0X3N0b3JlmgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVU5oY0RWeFFtaFJSUkFCqgE-CggvbS8wNjhoeRABGh8QASIbdJEvuS-t-C-xQhe7Wb-szQ15Bnv78gsojNrUKg8iC3BldHMgcGxhY2VzKAA&phdesc=kTgO-REE1IU&vet=12ahUKEwj8rKnc7OP8AhUEU6QEHauOCA0Q8UF6BAgDEFQ..i&lei=2LfRY_zgOoSmkdUPq52iaA&cs=1&um=1&ie=UTF-8&fb=1&gl=eg&sa=X&geocode=Kek0cC4QxfUUMVKdj258Ut9l&daddr=9+Qais,+AR+Riyadah,+Sidi+Gaber,+Alexandria+Governorate+5422061",
              forceSafariVC: false);
        }
        if (loc.title == "Pets awy") {
          launch(
              "https://www.google.com/maps?rlz=1C1RLNS_enEG968EG968&lqi=ChNwZXRzIHBsYWNlcyBpbiBhbGV4SJL85Z_XsICACFobEAAQARgAIhNwZXRzIHBsYWNlcyBpbiBhbGV4kgEJcGV0X3N0b3JlqgE-CggvbS8wNjhoeRABGh8QASIbdJEvuS-t-C-xQhe7Wb-szQ15Bnv78gsojNrUKg8iC3BldHMgcGxhY2VzKAA&phdesc=c7Wx3LAwXfk&vet=12ahUKEwj8rKnc7OP8AhUEU6QEHauOCA0Q8UF6BAgDEFQ..i&lei=2LfRY_zgOoSmkdUPq52iaA&cs=1&um=1&ie=UTF-8&fb=1&gl=eg&sa=X&geocode=KbvfhdQlxfUUMf4mW1rUm5XH&daddr=45+Street+314,+Ezbet+Saad,+Sidi+Gaber,+Alexandria+Governorate+5432067",
              forceSafariVC: false);
        }
      },
      child: Card(
          color: Colors.pinkAccent.shade200,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  loc.photo,
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    loc.title,
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    loc.Located,
                    style: TextStyle(  shadows: [
                            Shadow(
                                blurRadius:
                                    MediaQuery.of(context).size.height * 0.008,
                                color: Colors.black,
                                offset: Offset(0, 1))
                          ],
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * 0.041),
                          textAlign: TextAlign.center,
                        ),
                ]),
          )),
    );
  }
}
