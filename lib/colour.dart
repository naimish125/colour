import 'dart:math';

import 'package:flutter/material.dart';

class color extends StatefulWidget {
  const color({Key? key}) : super(key: key);

  @override
  State<color> createState() => _HomeState();
}

class _HomeState extends State<color> {
  List col = [
    Color(0xff0097A7),
    Color(0xff2A363B),
    Color(0xffE84A5F),
    Color(0xffFF847C),
    Color(0xffFEFCAB),
    Color(0xff666F80),
    Color(0xffC3C8D3),
    Color(0xffFFFFFF),
    Color(0xff26A39A),
  ];

  // List col2=[];
  int c1 = 0;
  int c2 = 1;
  int c3 = 2;
  int c4 = 3;
  int c5 = 4;
  int c6 = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Color Palette\n   Generator",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: col[c1],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: col[c2],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: col[c3],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: col[c4],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: col[c5],
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: col[c6],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    var rnd1 = Random();
                    var rnd2 = Random();
                    var rnd3 = Random();
                    var rnd4 = Random();
                    var rnd5 = Random();
                    var rnd6 = Random();
                    setState(() {
                      c1 = rnd1.nextInt(9);
                      c2 = rnd2.nextInt(9);
                      c3 = rnd3.nextInt(9);
                      c4 = rnd4.nextInt(9);
                      c5 = rnd4.nextInt(9);
                      c6 = rnd4.nextInt(9);
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 150,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.50),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.teal.shade700, width: 2)),
                      child: Text("Generate",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      alignment: Alignment.center),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}