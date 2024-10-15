import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text("Dashboard"),
        elevation: 4,
        shadowColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.cyan,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
