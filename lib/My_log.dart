
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(First_run());
}
class First_run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_box),
      ),
    );

  }
}


