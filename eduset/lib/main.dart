import 'package:eduset/Figma_course.dart';
import 'package:eduset/flutter_course_details.dart';
import 'package:eduset/protopie_details.dart';
import 'package:eduset/swift_ui_course.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'Register.dart';
import 'android_dev_course.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduSet',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'EduSet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png",),opacity: 0.5,
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
          backgroundColor: Colors.white70,
            elevation: 100,
            width: 300,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                DrawerHeader(
                    child: Container(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.yellow[700],
                        child: Icon(Icons.account_circle,size: 80,color: Colors.red,)
                      ),
                    )
                ),
                Divider(color: Colors.black,)
                ,
                ListTile(
                  title: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text("User XYZ",textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.yellow[700],fontSize: 20,letterSpacing: 2))),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.cyan.shade50)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color.fromRGBO(180, 0, 34, 100),fontFamily: "Transformers"),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.cyan.shade50),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.yellow.shade700)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Color.fromRGBO(180, 0, 34, 100),fontFamily: "Transformers"),
                    )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        // shadowColor: MaterialStateProperty.all<Color>(Colors.black)
                      ),
                      onPressed: (){}, child: Text("Setting",style: TextStyle(
                      color: Colors.yellow[300],fontFamily: "Transformers",letterSpacing: 0.5
                  ),
                  )
                  ),
                ),
                Container(
                  child: TextButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        // shadowColor: MaterialStateProperty.all<Color>(Colors.black)
                      ),
                      onPressed: (){}, child: Text("FAQ's",style: TextStyle(
                      color: Colors.yellow[300],fontFamily: "Transformers",letterSpacing: 0.5
                  ),
                  )
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      // shadowColor: MaterialStateProperty.all<Color>(Colors.black)
                    ),
                    onPressed: (){}, child: Text("Contact Us",style: TextStyle(
                    color: Colors.yellow[300],fontFamily: "Transformers",letterSpacing: 0.5
                ),
                )
                ),
                TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      // shadowColor: MaterialStateProperty.all<Color>(Colors.black)
                    ),
                    onPressed: (){}, child: Text("Need Help",style: TextStyle(
                    color: Colors.yellow[300],fontFamily: "Transformers",letterSpacing: 0.5
                ),
                )
                )
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 4),
                              spreadRadius: -1.5,
                            ),
                          ],
                        ),
                        child: Icon(UniconsLine.align_center),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 4),
                              spreadRadius: -1.5,
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white70,
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 5, bottom: 0),
                                hintText: "Search",
                                icon: Icon(
                                  UniconsLine.search,
                                  size: 20,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 4),
                              spreadRadius: -1.5,
                            ),
                          ],
                          color: Colors.white70,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.black),
                          // borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Icon(UniconsLine.bell),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 3, color: Colors.yellow.shade800),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(1, 4),
                              spreadRadius: -1.5,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(Icons.account_circle_outlined,size: 30,color: Colors.grey[400],),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Recent Courses",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: "Caviar",
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Flutter()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 60),
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 20,
                                      spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.red.shade900,
                                      Colors.purpleAccent.shade200
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.01, 0.9]),
                                // image: DecorationImage(image: AssetImage("assets/illustartions/illustration-01.png")))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10,top: 3),
                                          alignment: Alignment.topLeft,
                                          child: Text("22 courses more coming",style: TextStyle(
                                            color: Colors.white
                                          ),)),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                          alignment: Alignment.topLeft,
                                          child: Text("Flutter for Designers",style: TextStyle(
                                            fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white
                                          ),)),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Container(
                                        child: Image(
                                            image: AssetImage(
                                                "assets/illustartions/illustration-01.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Protopie_detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 0),
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 20,
                                      spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.tealAccent,
                                      Colors.teal
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.01, 0.9]),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:10, top: 3),
                                        alignment: Alignment.topLeft,
                                        child: Text("10 sections",style: TextStyle(
                                          color: Colors.white
                                        ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text("Protyping with Protopie",style: TextStyle(
                                            fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Image(image: AssetImage("assets/illustartions/illustration-02.png")),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Suic()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 50),
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 20,
                                      spreadRadius: 2
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [Colors.red, Colors.yellow.shade800],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.01, 0.9]),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 10,top:3),
                                          child: Text("22 section",style: TextStyle(
                                            color: Colors.white,
                                          ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("Build an app with Swift UI",style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 35,
                                            color: Colors.white
                                          ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Image(image: AssetImage("assets/illustartions/illustration-03.png")),
                                        )
                                      ],
                                    ),
                                  ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 350,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(),
                        child: Text(
                          "Explore Courses",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: "Caviar"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Suic()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 60),
                              width: 240,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // blurStyle: BlurStyle.inner,
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 13,
                                      spreadRadius: -3
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.redAccent
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.01, 0.9]),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left:20,
                                          top:5),
                                          child: Text("22 Sections",style: TextStyle(
                                            color: Colors.white,
                                          ),
                                          ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:2),
                                        child: Text("Build an app",style: TextStyle(
                                          fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("using Swift UI",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image(image: AssetImage("assets/illustartions/illustration-04.png"),width: 100,))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Protopie_detail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 0),
                              width: 240,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // blurStyle: BlurStyle.inner,
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 13,
                                      spreadRadius: -3
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.lightGreenAccent,
                                      Colors.green
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.01, 0.9]),
                                // image: DecorationImage(image: AssetImage("assets/illustartions/illustration-01.png")))
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:20,
                                            top:5),
                                        child: Text("10 Sections",style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:10),
                                        child: Text("Protyping with",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("Protopie",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image(image: AssetImage("assets/illustartions/illustration-05.png"),width: 98,))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Flutter()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 0),
                              width: 240,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // blurStyle: BlurStyle.inner,
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 13,
                                      spreadRadius: -3
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.yellow,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.2, 0.8]),
                                // image: DecorationImage(image: AssetImage("assets/illustartions/illustration-01.png")))
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:20,
                                            top:5),
                                        child: Text("20 Sections",style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:10),
                                        child: Text("Flutter for",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("Designers",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image(image: AssetImage("assets/illustartions/illustration-01.png"),width: 100,))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Adc()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 0),
                              width: 240,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // blurStyle: BlurStyle.inner,
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 13,
                                      spreadRadius: -3
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.tealAccent,
                                      Colors.teal
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.2, 0.8]),
                                // image: DecorationImage(image: AssetImage("assets/illustartions/illustration-01.png")))
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:20,
                                            top:5),
                                        child: Text("12 Sections",style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:10),
                                        child: Text("Build an app",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("using Java",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image(image: AssetImage("assets/illustartions/illustration-13.png"),width: 80,))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Figmac()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 0),
                              width: 240,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    // blurStyle: BlurStyle.inner,
                                      color: Colors.black,
                                      offset: Offset(0, 12),
                                      blurRadius: 13,
                                      spreadRadius: -3
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.blue.shade700,
                                      Colors.lightBlueAccent,
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    stops: [0.2, 0.8]),
                                // image: DecorationImage(image: AssetImage("assets/illustartions/illustration-01.png")))
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left:20,
                                            top:5),
                                        child: Text("8 Sections",style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left:2),
                                        child: Text("Build an UI",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text("using Figma",style: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          child: Image(image: AssetImage("assets/illustartions/illustration-11.png"),width: 100,))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 150,
                          )
                        ],
                      ),
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
//Add fake container of bigger size than row containers then might shadow will appear
// create A drawer for tommorrow
//always add opacity to background image so that widgets will appear more good
// reduce gaps in cards so that they appear in screen same time
// add shadow to bottom cards that are remaining
