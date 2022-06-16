import 'package:first_flutter/My_log.dart';
import 'package:flutter/material.dart';

void main() {
  List<int> numbers = [6, 4, 1, 2, 3];
  print("int numbers: $numbers");

  List<double> dNumbers = [];
  for(int index = 0; index < numbers.length; index++){
    dNumbers.add(numbers[index].toDouble());
  }
  print("double dNumbers: $dNumbers");

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'create first app with flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String pic = "https://cracksystem.net/wp-content/uploads/2021/05/enscape_icon.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(child: Image.network(pic)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact Support"),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              color: Colors.redAccent.withOpacity(0.03),
              child: Row(

                children: [
                  Image.asset("assets/images/p8.jpg")
                  // Image.network('https://imgs.search.brave.com/QYgoQwToQdUhsH_Jt-lsW809YzJUNshb5-TjKM-rnH0/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC53/UjVVTllIaGp6NWtu/Y05zTjRNV0tnSGFG/aiZwaWQ9QXBp')
                ],
              ),
            ),
            Container(

              color: Colors.redAccent.withOpacity(0.03),
              child: Row(

                children: [
                  Image.network('https://imgs.search.brave.com/QYgoQwToQdUhsH_Jt-lsW809YzJUNshb5-TjKM-rnH0/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC53/UjVVTllIaGp6NWtu/Y05zTjRNV0tnSGFG/aiZwaWQ9QXBp')
                ],
              ),
            ),

            const Text(
              'You have pushed the button this many times:',

            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

