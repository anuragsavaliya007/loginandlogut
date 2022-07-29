import 'package:flutter/material.dart';
import 'package:loginandlogut/Firstpage.dart';
import 'package:loginandlogut/Secondpage.dart';
import 'package:loginandlogut/Sharedpreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splacescreen extends StatefulWidget {
  const splacescreen({Key? key}) : super(key: key);

  @override
  State<splacescreen> createState() => _splacescreenState();
}

class _splacescreenState extends State<splacescreen> {


  @override
  void initState() {
    super.initState();
    abc();

  }


  abc() async {
    await Future.delayed(Duration(seconds: 3));

     sprfrncr.prefs = await SharedPreferences.getInstance();
    if(sprfrncr.prefs!.containsKey("login")){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return Secondpage();
      },));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

        return Firstpage();
      },));
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("loding...")),
    );
  }


}
