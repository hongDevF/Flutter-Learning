import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  Animation1({Key? key}) : super(key: key);

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(66, 138, 115, 211),
        title: Text("my AppBar"),
      ),
      body: Center(
        child: AnimatedSize(
          duration: Duration(seconds: 3),
          child: Container(
            height: double.infinity,
            child: Image.network(
              "https://imgs.search.brave.com/uWySc1aj3JGNM8ymHEb8zjZMKRVBVQDG303z39YseLs/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5J/eDZYak1idUN2b3Ez/RVFOZ0pveUVRSGFG/aiZwaWQ9QXBp",
            ),
          ),
        ),
      ),
    );
  }
}
