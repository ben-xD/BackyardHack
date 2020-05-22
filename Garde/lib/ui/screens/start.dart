import 'package:Garde/ui/screens/diary.dart';
import 'package:Garde/ui/screens/garden.dart';
import 'package:Garde/ui/screens/learn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class BottomTabDestination {
  const BottomTabDestination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<BottomTabDestination> allBottomTabDestinations = [
  BottomTabDestination("Learn", FontAwesomeIcons.brain, Colors.orange),
  BottomTabDestination("Garden", FontAwesomeIcons.carrot, Colors.green),
  BottomTabDestination("Diary", FontAwesomeIcons.bookOpen, Colors.blue),
];

List<BottomTabDestination> destinations;

class _StartScreenState extends State<StartScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: [
            LearnScreen(),
            GardenScreen(),
            DiaryScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allBottomTabDestinations.asMap().entries.map((entry) {
          int index = entry.key;
          BottomTabDestination destination = entry.value;
          return BottomNavigationBarItem(
            activeIcon: Icon(
              destination.icon,
              color: destination.color,
            ),
            icon: Icon(
              destination.icon,
            ),
            backgroundColor: destination.color,
            title: Text(
              destination.title,
              style: (_currentIndex == index)
                  ? TextStyle(color: destination.color)
                  : TextStyle(color: Colors.black54),
            ),
          );
        }).toList(),
      ),
    );
  }
}
