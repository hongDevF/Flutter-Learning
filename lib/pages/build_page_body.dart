import 'package:flutter/material.dart';

Widget buil_page_body() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        child: (Text(
          "My contta",
          textAlign: TextAlign.center,
          style: (TextStyle(
            color: Colors.white,
            fontSize: 35,
          )),
        )),
      ),
    ],
  );
}
