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
    var arrNames = [
      'Mohoshin',
      'Mukut',
      'Hannan',
      'Moniya',
      'Ibrahim',
      'Usha',
      'Mohsana',
      'Umme Hafsa'
    ];

    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text("ListTile"),
        elevation: 5,
          shadowColor: Colors.black,
        ),
      body: Center(
        child: CircleAvatar(
          child: Container(
            height: 50,
            width: 50,
            child: Column(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('assets/images/flutter.jpg'),
                ),
                Text('Name'),
              ],
            ),
          ),
          radius: 35,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
