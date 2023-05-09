import 'dart:io';

import 'package:adapt/Profiles_created.dart';
import 'package:adapt/screens/dog/screensD/show_choice_dog.dart';
import 'package:flutter/material.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';
import "package:intl/intl.dart";
import 'package:image_picker/image_picker.dart';

class profile_form_dog extends StatefulWidget {
  @override
  State<profile_form_dog> createState() => _profile_form_dogState();
}

List data = [
  ["mazen", "22", "y", "09-01-2023", "assets/cat-unscreen.gif"],
  ["ahmed", "8", "y", "27-01-2023", "assets/dogG.gif"],
  ["salma", "12", "z", "11-01-2023", "assets/cat-unscreen.gif"],
  ["esraa", "8", "8", "27-04-2020", "assets/dogG.gif"]
];
final List imgList = [
  "https://placekitten.com/g/200/300",
  "https://picsum.photos/id/237/200/300",
  "https://placekitten.com/g/200/300",
  "https://picsum.photos/id/237/200/300"
];

class _profile_form_dogState extends State<profile_form_dog> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  int length = 0;
  String Mgender = "male";
  final _formKey = GlobalKey<FormState>();
  String selectedGender = "male";
  DateTime _value = DateTime.now();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController vaccine = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController _dateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()));
  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.cyan.shade200, // <-- SEE HERE
                onPrimary: Colors.redAccent, // <-- SEE HERE
                onSurface: Colors.black, // <-- SEE HERE
              ),
            ),
            child: child!,
          );
        },
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2030));
    if (picked != null && picked != _value) {
      setState(() {
        _value = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(_value);
        print("inside");
        print(_value);
        print(_dateController.text);
      });
    }
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.20,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/cat.jpg") as ImageProvider
              : FileImage(File(_imageFile!.path)),
        ),
        Positioned(
          // bottom: MediaQuery.of(context).size.height * 0.00009,
          right: MediaQuery.of(context).size.height * 0.060,
          top: MediaQuery.of(context).size.height * 0.070,
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
              size: MediaQuery.of(context).size.height * 0.057,
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
        horizontal: MediaQuery.of(context).size.width * 0.2,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Pet photo",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.058,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height* 0.02,
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
        appBar: AppBar(
            elevation: 0.0,
            leading: Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.height *0.009 ),
                child: Image.asset('assets/logo.png', fit: BoxFit.cover)),
            backgroundColor: Colors.transparent),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.007,
              ),
              Image.asset(
                'assets/dogFF-unscreen.gif',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TextFormField(
                              controller: name,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(15.0),
                                icon: const Icon(Icons.person),
                                hintText: 'enter the pet Name',
                                labelText: "Name",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TextFormField(
                              controller: type,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(15.0),
                                  icon: const Icon(Icons.transgender),
                                  hintText: 'enter the pet type',
                                  labelText: "Type"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TextFormField(
                              maxLines: null,
                              expands: true,
                              controller: vaccine,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(15.0),
                                  icon: const Icon(HumanitarianIcons.ambulance),
                                  hintText: 'Last vaccination type',
                                  labelText: "Last Vaccination type"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TextFormField(
                              controller: age,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(15.0),
                                icon: const Icon(Icons.calendar_today),
                                hintText: 'enter the pet Age',
                                labelText: "Age",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: DropdownButtonFormField(
                              value: selectedGender,
                              hint: Text('Male or Female'),
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(15.0),
                                  icon:
                                      const Icon(Icons.track_changes_outlined),
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
                                  selectedGender = value as String;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          imageProfile(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                //padding:
                                //  const EdgeInsets.only(left: 100.0, top: 40.0),
                                // ignore: deprecated_member_use
                                child: new ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Profile_created()),
                                    );
                                  },
                                  child: Text(
                                    "have profile",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.07),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red),
                                ),
                              ),
                              Container(
                                // padding:
                                //   const EdgeInsets.only(left: 150.0, top: 40.0),
                                // ignore: deprecated_member_use
                                child: new ElevatedButton(
                                  onPressed: () {
                                    data.add([
                                      name.text,
                                      age.text,
                                      vaccine.text,
                                      _dateController.text,
                                      _imageFile!.path
                                    ]);
                                    imgList.add(_imageFile!.path);
                                    // type.text == "cat"
                                    //     ? imgList.add(
                                    //         "https://placekitten.com/g/200/300")
                                    //     : imgList.add(
                                    //         "https://picsum.photos/id/237/200/300");

                                    // print(data);
                                    // print(imgList);
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.07),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
