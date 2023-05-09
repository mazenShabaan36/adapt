import 'package:adapt/screens/Locations/choice_location_cat.dart';
//import 'package:adapt/screens/Locations/screens/showLocationD.dart';
import 'package:flutter/material.dart';

import '../choice_location_cat.dart';

class show_choice_Locations_cat extends StatelessWidget {
  const show_choice_Locations_cat({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.all(8),
                child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          // padding: EdgeInsets.all(6),
          // margin: EdgeInsets.all(2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //   SizedBox(
              //   height: MediaQuery.of(context).size.height *0.0001,
              // ),
              Container(
                child: Image.asset(
                  'assets/cat-unscreen.gif',
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(
              //    height: MediaQuery.of(context).size.height *0.09,
              //  ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2),
                  itemCount: lc.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: choice_locations_cat(lc[index]),
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
