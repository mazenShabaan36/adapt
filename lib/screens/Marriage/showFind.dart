import 'dart:io';
import 'package:adapt/screens/Marriage/find.dart';
import 'package:adapt/screens/buySell/buySell.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController location = TextEditingController();
TextEditingController typeM = TextEditingController();
TextEditingController gender = TextEditingController();
TextEditingController contactN = TextEditingController();
TextEditingController owner = TextEditingController();
TextEditingController petn = TextEditingController();
PickedFile? _imageFile;
final ImagePicker _picker = ImagePicker();
int length = 0;
String Mgender = "male";

// ignore: camel_case_types
class showFind extends StatefulWidget {
  const showFind({Key? key}) : super(key: key);

  @override
  _show_FindState createState() => _show_FindState();
}

class _show_FindState extends State<showFind> {
  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.09,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/cat.jpg") as ImageProvider
              : FileImage(File(_imageFile!.path)),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.005,
          right: MediaQuery.of(context).size.width * 0.04,
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
              size: MediaQuery.of(context).size.width * 0.09,
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
              fontSize: MediaQuery.of(context).size.width * 0.07,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.999,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Form(
                              key: _formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    imageProfile(),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: TextFormField(
                                        controller: owner,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon: const Icon(Icons.person),
                                            hintText: 'enter the owner name',
                                            labelText: "Owner"),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: TextFormField(
                                        controller: petn,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon: const Icon(Icons.pets),
                                            hintText: 'enter the pet name',
                                            labelText: "Pet Name"),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: TextFormField(
                                        controller: typeM,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon: const Icon(Icons.person),
                                            hintText: 'enter the pet type',
                                            labelText: "type"),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: TextFormField(
                                        controller: location,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon:
                                                const Icon(Icons.location_city),
                                            hintText: 'enter the pet Location',
                                            labelText: "Location"),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: DropdownButtonFormField(
                                        value: Mgender,
                                        hint: Text('Male or Female'),
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon: const Icon(
                                                Icons.track_changes_outlined),
                                            labelText: "Gender"),
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("Male"),
                                            value: "male",
                                          ),
                                          DropdownMenuItem(
                                            child: Text("Female"),
                                            value: "female",
                                          )
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            Mgender = value as String;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: TextFormField(
                                        //  keyboardType: Keyb,
                                        controller: contactN,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding:
                                                EdgeInsets.all(15.0),
                                            icon:
                                                const Icon(Icons.contact_phone),
                                            hintText: 'enter your phone number',
                                            labelText: "contact number"),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        // ignore: deprecated_member_use
                                        child: new ElevatedButton(
                                          onPressed: () {
                                            marry.add(findD(
                                                typeM.text,
                                                Mgender,
                                                location.text,
                                                owner.text,
                                                _imageFile!.path,
                                                contactN.text));
                                            setState(() {
                                              marry.length = marry.length;
                                            });

                                            print(marry);
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Confirm",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23),
                                          ),
                                          style: ElevatedButton.styleFrom(
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
                  ),
                );
              },
            );
          },
          label: Text("Find a partner"),
          icon: Icon(Icons.favorite),
          backgroundColor: Colors.pinkAccent,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.009),
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.2,
                )),
            backgroundColor: Colors.transparent),
        body: Container(
          padding: MediaQuery.of(context).padding * 0.0001,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Center(
                        child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height * 0.07,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: marry.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: MediaQuery.of(context).padding * 2,
                      child: Center(
                        child: findM(marry[index]),
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
