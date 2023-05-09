import 'package:adapt/screens/Cat/choice.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class show_choice extends StatelessWidget {
  const show_choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
            elevation: 0.0,
            leading:

            backgroundColor: Colors.transparent),
            */
      // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
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
         // padding: MediaQuery.of(context).padding*0.07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.8 ),
                child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width *0.16,),
                    ),
              Image.asset('assets/cat-unscreen.gif',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4
                  ,fit: BoxFit.cover,),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.65,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 6,
                  ),
                  itemCount: choices.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: SelectCard(choices[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
