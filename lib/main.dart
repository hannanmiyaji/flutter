
import 'package:app1/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/home', routes: {
      '/home': (context) => Home(),
      '/profile': (context) => Profile(),
      '/settings': (context) => Settings(),
    });
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              }, child: Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            child: Text('Go to Settings'),
          ),
        ],
      ),
    );
  }
}
