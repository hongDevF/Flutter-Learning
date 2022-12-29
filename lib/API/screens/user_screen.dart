import 'package:first_flutter/API/models/user_model.dart';
import 'package:first_flutter/API/service/bast_user_url.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<Users>? users;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    users = await RemoteService().getUser();
    if (users != null) {
      setState(() {
        isLoaded = true;
      });
    } else {
      print('test');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: users?.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(users![index].firstName),
            );
          },
        ),
        replacement: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
