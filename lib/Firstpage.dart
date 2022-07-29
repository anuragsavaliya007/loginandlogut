import 'package:flutter/material.dart';
import 'package:loginandlogut/Secondpage.dart';
import 'package:loginandlogut/Sharedpreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  TextEditingController tu = TextEditingController();
  TextEditingController tp = TextEditingController();


  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        body: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tu,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tp,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              ElevatedButton(onPressed: () async {
                 sprfrncr.prefs = await SharedPreferences.getInstance();
                 await sprfrncr.prefs!.setString("login", "yes");

                if(tu.text.trim() == "admin" && tp.text.trim() == "admin"){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return Secondpage();
                  },));
                }
                setState(() {

                });

              }, child: Text("Login")),
            ],
          ),
        ),

      ),
    );
  }
}
