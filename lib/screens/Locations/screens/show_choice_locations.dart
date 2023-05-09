import 'package:adapt/screens/Locations/choice_location.dart';
import 'package:adapt/screens/Locations/screens/showLocationD.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class show_choice_Locations extends StatelessWidget {
  const show_choice_Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.005 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              Container(
                child:
                    Image.asset('assets/dogFF-unscreen.gif',
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        fit: BoxFit.fill,),
                    
              ),
              SizedBox(
               
                height: MediaQuery.of(context).size.height*0.08,
              ),
              Expanded(
                child: GridView.builder(
               //scrollDirection: Axis.horizontal,
                
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  
                    crossAxisCount: 1,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 4,
                    childAspectRatio: 2
                  ),
                  itemCount: lc.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: MediaQuery.of(context).padding *0.002,
                      child: Center(
                        child: choice_locations(lc[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
