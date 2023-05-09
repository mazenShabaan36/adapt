import 'package:adapt/screens/Cat/firstAidC.dart';
import 'package:adapt/screens/dog/firstAid.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<firstAidC> firstAidlistC = <firstAidC>[
  const firstAidC(
    "Shock",
  ),
  const firstAidC(
    "breathing",
  ),
  const firstAidC(
    "CPR",
  ),
  const firstAidC(
    "Eyes",
  ),
  const firstAidC(
    "Electricity",
  ),
];

class Show_firstAidC extends StatefulWidget {
  @override
  _Show_firstAidCState createState() => _Show_firstAidCState();
}

class _Show_firstAidCState extends State<Show_firstAidC> {
  String googleS = '';
  void insert_firstAid() {
    setState(() {
      firstAidlistC.add(firstAidC(
        "name",
      ));
    });
  }

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
                padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton.extended(
          label: Text("Search another"),
          onPressed: () => showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              backgroundColor: Colors.blue.shade200,
              builder: (BuildContext context) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      Image.asset(
                        "assets/google.png",
                        height: MediaQuery.of(context).size.height * 0.09,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(23.0)),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.brown.shade800,
                            hintText: "search your first aid",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: Colors.white70),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onChanged: (value) {
                            googleS = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent),
                          onPressed: () {
                            launch(
                                'https://www.google.com/search?q=' + googleS);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.search),
                              Text("Search"),
                            ],
                          ))
                    ],
                  ),
                );
              },
              context: context) //insert_firstAid,
          ,
          icon: Icon(Icons.search),
          backgroundColor: Colors.pinkAccent.shade200,
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child:
                    Image.asset('assets/firstAid-removebg-preview.png',
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width * 0.4,
                        fit: BoxFit.fill,),
                    
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.01,
              ), Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: List.generate(firstAidlistC.length, (index) {
                  return Center(
                    child: Selected_firstAidC(firstAidlistC[index]),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
