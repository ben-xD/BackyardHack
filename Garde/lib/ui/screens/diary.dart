import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Diary"),
      ),
      body: Text("Diary Screen"),
    );
  }
}
