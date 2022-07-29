import 'package:flutter/material.dart';
import 'package:loginandlogut/Firstpage.dart';
import 'package:loginandlogut/Sharedpreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Succesfull")),
      body: Center(child: ElevatedButton(onPressed: () async {

        sprfrncr.prefs = await SharedPreferences.getInstance();
        sprfrncr.prefs!.clear();

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return Firstpage();
        },));
      }, child: Text("Logout"))),
    );
  }
}
