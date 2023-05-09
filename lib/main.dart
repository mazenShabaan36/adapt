
import 'package:adapt/screens/homepage.dart';
import 'package:flutter/material.dart';
void main() => runApp(home());

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adapt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MySplash(),
    );
  }
}
