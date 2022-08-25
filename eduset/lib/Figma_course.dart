import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'course_video_flutter.dart';
import 'main.dart';

class Figmac extends StatefulWidget {
  const Figmac({Key? key}) : super(key: key);

  @override
  State<Figmac> createState() => _FigmacState();
}

class _FigmacState extends State<Figmac> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/illustartions/illustration-11.png"),opacity: 0.2)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.blue.shade700,
                              Colors.lightBlueAccent,
                            ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child: Text("8 Sections",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20
                                            ),
                                            ),
                                          ),
                                          Text("Build an UI",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text("Using Figma",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,fontWeight: FontWeight.bold
                                          ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black,
                                                    offset: Offset(1, 10),
                                                    blurRadius: 20,
                                                    spreadRadius: -3
                                                )
                                              ]
                                          ),
                                          child: Icon(Icons.close),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 28.0,
                                ),
                                Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 18),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/illustartions/illustration-11.png")),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Flutter_video()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 12.5, bottom: 13.5, left: 20.5, right: 14.5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 16.0,
                                  offset: Offset(0, 4)),
                            ],
                          ),
                          width: 60.0,
                          height: 60.0,
                          child: Icon(UniconsLine.play),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent.withOpacity(0.2)
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(top: 12.0, right: 28.0, left: 28.0,bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      child: Icon(
                                        Icons.people,
                                        color: Colors.white,
                                      ),
                                      radius: 21.0,
                                      backgroundColor: Colors.deepPurple[900],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(29.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "28.7k",style:
                                TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),), // take style from clicking on kTitle2style
                                Text("Students"),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.white,
                                      ),
                                      radius: 21.0,
                                      backgroundColor: Colors.deepPurple[900],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(29.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "10.3k",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),), // take style from clicking on kTitle2style
                                Text("Likes"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Text(
                        "Three years ago i can't even write a single line of code but by enrolling this course i have"
                            "learned so things like progamming logical thinking and also i am more creative than before 3 years thanks to EduSet app for helping me in my carear",style: TextStyle(
                          fontSize: 20
                      ),),//change font family
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10),
                      child: Text("What is Figma ?",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 50,fontFamily: "Caviar"
                      ),
                      ),//change font of what is flutter
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,bottom: 20),
                      child: Text(
                        "Figms is collaborative browser based interface design tool, additional offline feature enabled by desktop applications for mac os and windows",style: TextStyle(
                          fontSize: 20
                      ),
                      ),//change font family
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Course Details",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 50,fontFamily: "Caviar"
                      ),
                      ),//change font of what is flutter
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Course Duration :-", style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("10 weeks", style:
                          TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Prerequists :-", style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Basic Knowledge of Progamming", style:
                          TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Starts from :-", style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("16th August 2022", style:
                          TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,bottom: 15),
                      child: Row(
                        children: [
                          Text("Ends on :-", style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("26th October 2022", style:
                          TextStyle(
                              fontSize: 18
                          ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
