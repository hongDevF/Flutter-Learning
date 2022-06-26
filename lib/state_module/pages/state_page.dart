
import 'package:first_flutter/state_module/logics/counter_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import '../../detailpage/none_state_detial.dart';
import '../../detailpage/theme_logic.dart';
class StatePage extends StatefulWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  bool _dark = false;

  @override
  Widget build(BuildContext context) {
    _dark = context.watch<NoneStateThemeLogic>().dark;

    return Scaffold(
      backgroundColor: _dark ? Colors.blueGrey[900] : Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: _dark ? Colors.black : Colors.deepOrange,
      title: Text("State Page"),
      actions: [
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().decrease();
          },
          icon: Icon(Icons.remove),
        ),
        IconButton(
          onPressed: () {
            context.read<CounterLogic>().increase();
          },
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StateDetailPage(),
              ),
            );
          },
          icon: Icon(CupertinoIcons.arrowshape_turn_up_right_fill),
        ),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: _dark ? Colors.blueGrey[600] : Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Icon(Icons.face, size: 100),
          ),
          ListTile(
            leading: Icon(
              _dark ? Icons.light_mode : Icons.dark_mode,
              color: _dark ? Colors.white60 : Colors.black,
            ),
            title: Text(
              _dark ? "Change to Light Mode" : "Change to Dark Mode",
              style: TextStyle(color: _dark ? Colors.white60 : Colors.black),
            ),
            onTap: () {
              context.read<NoneStateThemeLogic>().toggleDark();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    int counter = context.watch<CounterLogic>().counter;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          "The Russo-Ukrainian War is an ongoing war between Russia and Ukraine. It began in February 2014 following the Ukrainian Revolution of Dignity, and initially focused on the status of Crimea and the Donbas, internationally recognised as part of Ukraine.",
          style: TextStyle(
            fontSize: 18 + counter.toDouble(),
            color: _dark ? Colors.white60 : Colors.black,
          ),
        ),
      ),
    );
  }
}
