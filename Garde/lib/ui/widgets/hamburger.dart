import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Review us"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Get support"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
