import 'package:flutter/material.dart';

class GardenScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GardenScreenState();
}

class _GardenScreenState extends State<GardenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Garden"),
      ),
      body: Text("Garden Screen"),
    );
  }
}
