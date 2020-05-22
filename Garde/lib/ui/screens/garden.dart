import 'package:Garde/ui/widgets/hamburger.dart';
import 'package:flutter/material.dart';

class GardenScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GardenScreenState();
}

void addPlantHandler() {}

void searchGardenPlant() {}

class _GardenScreenState extends State<GardenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Hamburger(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Garden"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, size: 28),
            tooltip: "Search for plants in your garden",
            onPressed: searchGardenPlant,
          ),
          IconButton(
            icon: const Icon(Icons.add, size: 35),
            tooltip: "Add a plant",
            onPressed: addPlantHandler,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Text("Weather"),
          Text("Garden Screen"),
        ],
      ),
    );
  }
}
