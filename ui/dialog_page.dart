import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: DialogPage(),
    );
  }
}

class DialogPage extends StatefulWidget {
  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("test");
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.safety_check),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.amber,
        child: Container(
          height: 60,
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: TextButton(onPressed: () {}, child: Icon(Icons.home)),
                ),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("dialog test")),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Clcik Me"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
