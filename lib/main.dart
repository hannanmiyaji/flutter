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
          title: Text("mrgin & padding"),
          elevation: 5,
          shadowColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          color: Colors.blue,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, bottom: 5, right: 3),
            child: Text('Hello World',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.red)),
          ),
        ));
  }
}
