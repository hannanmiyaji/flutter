import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  callBack() {
    print('Clicked!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.orange,
        title: Text('MyApp'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.brown,
            ),
            Positioned(
              top: 24,
              left: 24,
              child: Container(
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            Container(
              child: Positioned(
                top: 95,
                left: 95,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}