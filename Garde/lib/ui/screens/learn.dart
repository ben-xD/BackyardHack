import 'package:Garde/ui/widgets/hamburger.dart';
import 'package:flutter/material.dart';

class LearnScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnScreenState();
}

void searchForPlantHandler() {}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hamburger(),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Learn"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 28),
            tooltip: "Search for plants in your garden",
            onPressed: searchForPlantHandler,
          ),
        ],
      ),
      body: Text("Learn Screen"),
    );
  }
}
