import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade600,
          title: Text("Add Contact"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.send),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 40,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 1.8,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: null,
                                hintText: "first Name (required)",
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: null,
                                hintText: "Last Name (optional)",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  border: null,
                  hintText: "Cambodia",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: null,
                  prefixText: "885",
                  hintText: "",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
