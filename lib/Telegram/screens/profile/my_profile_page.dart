import 'package:first_flutter/Telegram/screens/profile/image_profile.dart';
import 'package:flutter/material.dart';

import 'util/Bio_edit_page.dart';

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Positioned(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageProfile(
                          height: 400,
                          image: 'assets/images/profile.jpg',
                        ),
                        ImageProfile(
                          height: 400,
                          image: 'assets/images/p8.jpg',
                        ),
                        ImageProfile(
                          height: 400,
                          image: 'assets/images/p9.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 40,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hang Senghong",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                bottom: 0,
                right: 25,
                child: GestureDetector(
                  onTap: () => {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.black,
                        title: Text(
                          "Edit Name",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        content: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: Submit,
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.edit,
                          size: 30,
                        ),
                      )),
                ),
              ),
            ],
          ),
          // List data
          Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Phone Number
              SizedBox(
                height: 5,
              ),

              // @NickName
              _listOfAccount(
                "+084534231321",
                "this is my contact",
              ),
              _listOfAccount(
                "NickName",
                "@hang_Senghong",
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditBio()),
                  );
                },
                child: _listOfAccount(
                  "Bio",
                  "@hang_Senghong",
                ),
              ),

              // Setting Container

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    _listOfSetting(
                      "Notification",
                      Icon(Icons.notification_add_rounded),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Data and Storage",
                      Icon(Icons.data_array_rounded),
                    ),
                    _listOfSetting(
                      "Chat Settings",
                      Icon(Icons.message),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                    _listOfSetting(
                      "Privacy and Security",
                      Icon(Icons.lock),
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }

  void Submit() {
    Navigator.of(context).pop();
  }
}

Widget _listOfSetting(String name, Icon icon) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Text("$name"),
        ],
      ),
    ),
  );
}

Widget _listOfAccount(String title, String subtitle) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
