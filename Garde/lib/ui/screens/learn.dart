import 'package:flutter/material.dart';

class LearnScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Learn"),
      ),
      body: Text("Learn Screen"),
    );
  }
}
