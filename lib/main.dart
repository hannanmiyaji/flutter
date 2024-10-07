import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
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
        title: Text("Scrollbar Test"),
      ),
      body: Scrollbar(
        trackVisibility: true,
        thickness: 10,
        interactive: true,
        radius: const Radius.circular(20),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(8),
                height: 150,
                color: Colors.blue.shade100,
                child: Text(
                  'Item$index',
                  style: const TextStyle(fontSize: 22),
                ),
              );
            }),
      ),
    );
  }
}