import 'package:flutter/material.dart';
import 'package:graffitiwall/Views/HomePageView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.dark(
          background: Colors.black,
        ),
      ),
      home: HomePageView(),
    );
  }
}


class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      // Optionally add onTap, currentIndex, etc. here
      // For example:
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped,
    );
  }
}