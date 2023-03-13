import 'package:eduset/database/mysql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var db = new Mysql();
  final formkey = GlobalKey<FormState>();
  final formkey1 = GlobalKey<FormState>();
  bool _isVisible = true;
  bool _isVisible1 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/Login background.png"),fit: BoxFit.cover)
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 1,
            title: Text("Register",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: "Caviar"
            ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          alignment: Alignment.center,

                          child: Text("EduSet",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.deepOrangeAccent,
                              fontFamily: "Mail",
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(

                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(

                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter your name",
                            ),
                        ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter Phone Number",
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "Set Username",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Form(
                            key: formkey,
                            child: TextFormField(

                              decoration: InputDecoration(
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                }, icon: _isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                hintText: "Set Password",
                              ),
                              obscureText: _isVisible,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Form(
                            key: formkey1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (){
                                    setState(() {
                                      _isVisible1 = !_isVisible1;
                                    });
                                  }, icon: _isVisible1 ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                hintText: "Confirm Password",
                              ),
                              obscureText: _isVisible1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                color: Colors.orangeAccent
                            ),
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            }, child: Text("Submit",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                            ),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
