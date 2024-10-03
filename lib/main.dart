import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp Bar'),
        backgroundColor: Colors.blue,
        toolbarHeight: 60,
        elevation: 2,
      ),

      //  body:
      //    Image.asset("assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg",
      // width: 200,
      // height: 200,
      //   fit: BoxFit.scaleDown,
      //   alignment: Alignment.bottomCenter,

      /* body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Hello World"),
        Text("Hello Bangladesh"),

  Image.asset("assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg",
    width: 200,
    height: 200,
    fit: BoxFit.cover,
    alignment: Alignment.bottomCenter,
    ),
        Text("This is a Show image"),
      ],
      ),*/

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisSize: MainAxisSize.min,
      //
      //   children: [
      //     Text("Hello "),
      //     Text("World "),
      //    Image.asset("assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg",
      //     width: 200,
      //    height: 200,
      //      fit: BoxFit.contain,
      //     alignment: Alignment.center,
      //    ),
      //     Text("Hello Bangladesh"),
      //
      //   ],
      // ),

      body: Column(
        children: [
          Text("Hello World"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("It's a Big Leaves"),
              Image.asset(
                "assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
              ),
              Text("It's a Color full"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("This is a beautiful "),
              Image.asset(
                "assets/images/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai.jpg",
                width: 150,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("This"),
                  Text("is"),
                  Text("Tree Leaves"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}