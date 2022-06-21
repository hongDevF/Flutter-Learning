import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageView extends StatefulWidget {
  const pageView({Key? key}) : super(key: key);

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My app bar"),
      ),
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: (Stack(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 100,
                      alignment: Alignment.topLeft,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: (Text("test")),
                      ),
                    ),
                    Container(
                      height: 100,
                      color: Colors.black,
                    ),
                    Container(
                      height: 100,
                      color: Colors.white,
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 229, 224, 224),
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 13, 12, 12),
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 229, 224, 224),
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 13, 12, 12),
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 229, 224, 224),
                    ),
                    Container(
                      height: 100,
                      color: Color.fromARGB(255, 13, 12, 12),
                    ),
                  ],
                )
              ],
            )),
          );
        }),
      ),
    );
  }
}
