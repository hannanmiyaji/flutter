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
        title: Text(
          "MyApp",
          style: TextStyle(color: Colors.red),
        ),
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.orange.withOpacity(0.3), BlendMode.darken)),
            ),
          ),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.red,
        ),
        shadowColor: Colors.red,
        toolbarHeight: 150,
        elevation: 7,
      ),
    );
  }
}