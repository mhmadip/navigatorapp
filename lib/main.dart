
import 'package:flutter/material.dart';
import 'package:navigatorapp/screens/login_sceen.dart';
import 'package:navigatorapp/screens/register_screen.dart';

void main() {
  runApp( MaterialApp(
    title: 'Navigation Basics',
    initialRoute: '/',
    routes: {
      '/':(context)=>LoginScreen(),
      'register_screen':(context)=>RegisterScreen(),
      'bottom_nav_screen':(context)=>BottomNavigationBarExampleApp(),
    },
  ));
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    LoginScreen(),
    RegisterScreen(),
    LoginScreen(),
    LoginScreen(),
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
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chatting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_cell),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profiles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profiles',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}



