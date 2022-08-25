import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/iron man2.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.red[200],
          elevation: 30,
          centerTitle: true,
          title: Text("Login",style: TextStyle(
          ),),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(

                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            label: Text("Username",style: TextStyle(),)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            label: Text("Password",style: TextStyle())),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan.shade100),
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topRight: Radius.circular(15))))
                        ),
                        onPressed: (){
                          showDialog(barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.orange[300],
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),
                                    topRight: Radius.circular(15))),
                                title: Text("Sure to Continue"),
                                content: Text("Check All details filled"),
                                actions: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(),));
                                      },
                                      child: const Text("Sure",style: TextStyle(
                                      ),))
                                ],
                              )
                          );
                        }, child: Text("Login",style: TextStyle(color: Colors.red.shade300,letterSpacing: 0.5),))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
