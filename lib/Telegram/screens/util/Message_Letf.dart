import 'package:flutter/material.dart';

class MessagesLetf extends StatefulWidget {
  @override
  State<MessagesLetf> createState() => _MessagesLetfState();
}

class _MessagesLetfState extends State<MessagesLetf> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShhNWr9PsP-1gmyGpFbb91eFOUHyqWAxaJiL0wTBfD6U7sOtviuWdTJOWNdLmDC8t1Wj8&usqp=CAU'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("test"),
                ]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/p8.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("Hello how are you today?"),
                ]),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
