import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flutter Appbar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.limeAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.deepPurpleAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.cyan,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                height: 100,
                color: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}