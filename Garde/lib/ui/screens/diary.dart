import 'package:Garde/ui/widgets/hamburger.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiaryScreenState();
}

void addDiaryEntryHandler() {}

void searchDiaryHandler() {}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hamburger(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Diary"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 28),
            tooltip: "Search for plants in your garden",
            onPressed: searchDiaryHandler,
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 35),
            tooltip: "Add a diary entry",
            onPressed: addDiaryEntryHandler,
          )
        ],
      ),
      body: Text("Diary Screen"),
    );
  }
}
