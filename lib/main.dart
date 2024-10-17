import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivty(),
    );
  }
}

class HomeActivty extends StatelessWidget {
  HomeActivty({super.key});

  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('MyAppBar'),
        toolbarHeight: 60,
        elevation: 7,
        shadowColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Currernt Time:${time.hour}:${time.minute}:${time.second}',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState() {}
                  },
                  child: Text('Current Time')),
            ],
          ),
        ),
      ),
    );
  }
}