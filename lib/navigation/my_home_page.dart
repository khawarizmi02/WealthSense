import 'package:flutter/material.dart';
import 'quest_page.dart';
import 'profile_page.dart';
import 'option_page.dart';
import 'course_page.dart';

class MyHomePage extends StatefulWidget {

  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    QuestPage(title: 'Quest Page'),
    ProfilePage(),
    OptionPage(), // Add OptionPage widget here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
  title: Text(widget.title),
  flexibleSpace: Stack(
    children: [
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center Row items
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CoursePage()),
                  );
                },
                icon: const Icon(Icons.book),
                tooltip: 'Go to course page',
              ),
              const Icon(Icons.local_fire_department, color: Colors.red),
              const Text('streak count'),
              const SizedBox(width: 20),
              const Icon(Icons.favorite, color: Colors.red),
              const Text('heart count'),
            ],
          ),
        ),
      ),
    ],
  ),
),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Options',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Quest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem( // Add new BottomNavigationBarItem for OptionPage
            icon: Icon(Icons.menu),
            label: 'Options',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}