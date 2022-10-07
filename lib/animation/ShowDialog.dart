import 'package:flutter/material.dart';

class myDialog extends StatelessWidget {
  const myDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show dialog"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AboutDialog(
                      applicationIcon: Icon(Icons.home),
                      applicationLegalese: "legalese",
                      applicationName: "Flutter App",
                      // applicationVersion: "version 3.0.0",
                      children: [Text("this is text built by flutter ")],
                    ));
          },
        ),
      ),
    );
  }
}
