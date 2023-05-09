import 'dart:io';

import 'package:adapt/screens/buySell/buySell.dart';
//import 'package:adapt/screens/dog/screensD/profile_show_dog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController nameN = TextEditingController();
TextEditingController ownerName = TextEditingController();
TextEditingController typeN = TextEditingController();
TextEditingController priceN = TextEditingController();
TextEditingController contactN = TextEditingController();
PickedFile? _imageFile;
final ImagePicker _picker = ImagePicker();
int length = 0;

// ignore: camel_case_types
class show_sell extends StatefulWidget {
  const show_sell({Key? key}) : super(key: key);

  @override
  _show_sellState createState() => _show_sellState();
}

class _show_sellState extends State<show_sell> {
  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: MediaQuery.of(context).size.width*0.08,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/cat.jpg") as ImageProvider
              : FileImage(File(_imageFile!.path)),
        ),
        Positioned(
         bottom: MediaQuery.of(context).size.height*0.005,
          right: MediaQuery.of(context).size.width*0.04,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
                size: MediaQuery.of(context).size.width*0.09,
            ),
          ),
        ),
      ]),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width*0.06,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            // ignore: deprecated_member_use
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            // ignore: deprecated_member_use
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
                Navigator.pop(context);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        floatingActionButton: FloatingActionButton.extended(
          // foregroundColor: Colors.brown.shade700,
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.blueAccent,
            
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.999,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SingleChildScrollView(
                          child: Form(
                            key: _formKey,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  imageProfile(),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: TextFormField(
                                      controller: nameN,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(15.0),
                                          icon: const Icon(Icons.pets),
                                          hintText: 'enter the pet Name',
                                          labelText: "Pet Name"),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: TextFormField(
                                      controller: typeN,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(15.0),
                                          icon: const Icon(Icons.transgender),
                                          hintText: 'enter the pet type',
                                          labelText: "Type"),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: TextFormField(
                                      controller: ownerName,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(15.0),
                                          icon: const Icon(Icons.person),
                                          hintText: 'enter the owner name',
                                          labelText: "owner"),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: TextFormField(
                                      controller: priceN,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(15.0),
                                        icon: const Icon(Icons.attach_money),
                                        hintText: 'enter the pet Price',
                                        labelText: "Price",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.075,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: TextFormField(
                                      controller: contactN,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(15.0),
                                          icon: const Icon(Icons.contact_phone),
                                          hintText: 'enter your phone number',
                                          labelText: "contact number"),
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      // ignore: deprecated_member_use
                                      child: new ElevatedButton(
                                        onPressed: () {
                                          pets.add(sellD(
                                            ownerName.text,
                                            contactN.text,
                                              nameN.text,
                                              "${priceN.text} \$",
                                              _imageFile!.path,
                                              typeN.text));
                                          setState(() {
                                            pets.length = pets.length;
                                          });

                                          print(pets);
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Confirm ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            // ignore: deprecated_member_use
                                            primary: Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          label: Text("sell my Pet"),
          icon: Icon(Icons.camera),
          backgroundColor: Colors.pinkAccent,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(7),
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
                        child: Icon(
                      Icons.shopping_cart_outlined,
                      size: MediaQuery.of(context).size.height * 0.08,
                      color: Colors.white70,
                    )
                        //Text("Pets to buy",
                        //     style: TextStyle(
                        //         color: Colors.brown.shade700,
                        //         fontSize: 30,
                        //         fontWeight: FontWeight.bold)),
                        )
                  ],
                ),
              ),
              SizedBox(
              
                height: MediaQuery.of(context).size.height*0.04
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: MediaQuery.of(context).padding*2,
                      child: Center(
                        child: SelectSell(pets[index]),
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
