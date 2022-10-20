import 'package:flutter/material.dart';

import '../my_profile_page.dart';

class EditBio extends StatefulWidget {
  @override
  State<EditBio> createState() => _EditBioState();
}

class _EditBioState extends State<EditBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Bio",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  print("Data has been saved !");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyProfile()),
                  // );
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/5291/5291043.png',
                  color: Colors.white,
                  width: 20,
                ),
              ),
            ),
          ]),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey.shade100)), // border: OutlineInputBorder(),
                  hintText: "Bio",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("You can add afew lines about your self."),
            ],
          ),
        ),
      ),
    );
  }
}
