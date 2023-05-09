import 'package:adapt/screens/Cat/choice.dart';
import 'package:adapt/screens/dog/choice_dog.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class show_choice_dog extends StatelessWidget {
  const show_choice_dog({Key? key}) : super(key: key);

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
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.all( MediaQuery.of(context).size.height *0.009 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child:
                    Image.asset('assets/dogFF-unscreen.gif',
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width * 0.4,
                        fit: BoxFit.fill,),
                    
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: choices_dog.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:  EdgeInsets.all(MediaQuery.of(context).size.width *0.001 ),
                      child: Center(
                        child: SelectCard_dog(choices_dog[index]),
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
