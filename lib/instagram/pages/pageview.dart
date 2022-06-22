import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageView extends StatefulWidget {
  const pageView({Key? key}) : super(key: key);

  @override
  State<pageView> createState() => _pageViewState();
}

// ignore: camel_case_types
class _pageViewState extends State<pageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              child: (Image.network(
                'https://imgs.search.brave.com/9Fe_S5J9PAzc0B57WfB_LUqgC89FfcyGuaH82vmZGSE/rs:fit:582:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5F/OUhOZUJwWUlQNVNQ/RnZYVFF4OHpRSGFH/QyZwaWQ9QXBp',
                fit: BoxFit.cover,
              )),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              color: Colors.greenAccent,
              child: (const Text("test")),
            ),
            Container(),
          ]),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My app bar"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 100,
              color: Colors.red,
            ), // container 1
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.grey.shade100,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.center,
              child: (const Text(
                "This is create for grid column",
                style: TextStyle(
                  fontSize: 25,
                ),
              )),
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              color: Colors.black,
            ),
          ]),
        ));
  }

  IconData? icon(IconData abc) {
    return null;
  }
}