import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

void main() {
  runApp(new MaterialApp(
    title: "Add Camera And Image",
    home: LandScreen(),
  ));
}

class LandScreen extends StatefulWidget {
  const LandScreen({Key? key}) : super(key: key);

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  File? _image;

  final _picker = ImagePicker();
  _openGalary(BuildContext context) async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  //Add dialog
  Future<void> _showChoiceDialog(BuildContext Context) {
    return showDialog(
        context: Context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("please choice !"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Galary"),
                    onTap: () {
                      _openGalary(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Image.asset('assets/images/key2.jpg')),
            ListTile()
            // LeaderLayer(link)
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Container(width: 50, height: 20, child: Icon(Icons.settings)),
          Icon(Icons.more_vert),
        ],
        centerTitle: true,
        title: Text("My App"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _image != null
                  ? Image.file(_image!, fit: BoxFit.cover)
                  : const Text('Please select an image'),
              Padding(padding: EdgeInsets.symmetric()),
              RaisedButton(
                onPressed: () {
                  _showChoiceDialog(context);
                },
                child: Text(
                  "Select Images",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "khmerMoul",
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
