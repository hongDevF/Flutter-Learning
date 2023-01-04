// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      'C',
      '+/-',
      '%',
      'DEL',
      '7',
      '8',
      '9',
      '/',
      '4',
      '5',
      '6',
      'x',
      '1',
      '2',
      '3',
      '-',
      '0',
      '.',
      '=',
      '+'
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Calculator',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey.shade800,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          userInput,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 30, color: Colors.grey.shade400),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          answer,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return TextButton(
                        onPressed: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        child: Text(
                          buttons[index],
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.red,
                          ),
                        ));
                  } else if (index == 18) {
                    return SizedBox(
                      width: 20,
                      height: 20,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              equalPressed();
                            });
                          },
                          child: Text(
                            buttons[index],
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.yellow,
                            ),
                          )),
                    );
                  } else if (index == 3) {
                    return SizedBox(
                      width: 20,
                      height: 20,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              answer = '0';
                            });
                          },
                          child: Text(
                            buttons[index],
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.yellow,
                            ),
                          )),
                    );
                  } else {
                    return SizedBox(
                      width: 20,
                      height: 20,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              userInput += buttons[index];
                              answer = '0';
                            });
                          },
                          child: Text(
                            buttons[index],
                            style: TextStyle(
                                fontSize: 40,
                                color: isOperator(buttons[index])
                                    ? Colors.blue
                                    : Colors.white),
                          )),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    // Parser p = Parser();
    // Expression exp = p.parse(finaluserinput);
    // ContextModel cm = ContextModel();
    // double eval = exp.evaluate(EvaluationType.REAL, cm);
    // answer = eval.toString();
  }
}
