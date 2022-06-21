
import 'package:flutter/material.dart';
import 'package:first_flutter/pages/main_page.dart';
Widget buil_page_body(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        child: (
        Text("My contta",textAlign: TextAlign.center,style:(TextStyle(
          color: Colors.white,
          fontSize: 35,
        )
        ),
        )
        ),
      ),
    ],
  );
}