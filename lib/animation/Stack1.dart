import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  const Stack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Stack"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.black,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              Container(
                width: 10,
                height: 10,
                color: Color.fromARGB(255, 64, 15, 120),
              ),
              Positioned(
                // top: 0,
                right: 0,
                bottom: 0,
                left: 50,
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
