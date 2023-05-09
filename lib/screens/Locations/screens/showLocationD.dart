import 'package:flutter/material.dart';
import 'package:adapt/screens/Locations/location_dog.dart';

// ignore: camel_case_types
class show_location_dog extends StatelessWidget {
  const show_location_dog({Key? key}) : super(key: key);

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          padding: MediaQuery.of(context).padding*0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Center(
                        child: Container(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.height*0.07, right: MediaQuery.of(context).size.height*0.07),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Icon(Icons.location_on_sharp,
                      size: MediaQuery.of(context).size.height * 0.09,
                      color: Colors.white,),
                     
                    ))
                  ],
                ),
              ),
              SizedBox(
     
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Expanded(
                child: GridView.builder(
                
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                    
                    
                  ),
                  itemCount: places.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:MediaQuery.of(context).padding * 2,
                      child: Center(
                        child: SelectLocation_dog(places[index]),
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
