import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_logic.dart';
import '../state_module/logics/counter_logic.dart';

class StateDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateDetailPageState();
}

class _StateDetailPageState extends State<StateDetailPage> {
  // Dark Mode
  bool _dark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  //AppBar
  AppBar _buildAppBar() {
    _dark = context.watch<NoneStateThemeLogic>().dark;
    return AppBar(
      backgroundColor: _dark ? Colors.blueGrey[900] : Colors.blue,
      title: Text(
        "None State Details",
        style: TextStyle(color: _dark ? Colors.white60 : Colors.white),
      ),
      actions: [
        IconButton(
            onPressed: () {
              context.read<NoneStateThemeLogic>().toggleDark();
            },
            icon: Icon(
              _dark ? Icons.light_mode : Icons.dark_mode,
              color: _dark ? Colors.white60 : Colors.white,
            ))
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.topCenter,
      color: _dark ? Colors.blueGrey[900] : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildButtons(),
          Expanded(
            child: _buildText(),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      color: _dark ? Colors.blueGrey[600] : Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            color: _dark ? Colors.blueGrey[900] : Colors.white,
            onPressed: () {
              context.read<CounterLogic>().decrease();
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            color: _dark ? Colors.blueGrey[900] : Colors.white,
            onPressed: () {
              context.read<CounterLogic>().increase();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    int counter = context.watch<CounterLogic>().counter;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(
          "Petroleum, also known as crude oil, or simply oil, is a naturally occurring yellowish-black liquid mixture of mainly hydrocarbons, and is found in geological formations. The name petroleum covers both naturally occurring unprocessed crude oil and petroleum products that consist of refined crude oil.",
          style: TextStyle(
              fontSize: 18 + counter.toDouble(),
              color: _dark ? Colors.white60 : Colors.black),
        ),
      ),
    );
  }
}
