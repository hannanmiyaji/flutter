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
    var arrName = [
      'Mohoshin',
      'Mukut',
      'Hannan',
      'Moniya' 'Mohoshin',
      'Mukut',
      'Hannan',
      'Moniya' 'Mohoshin',
      'Mukut',
      'Hannan',
      'Moniya'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('MyApp Bar'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      arrName[index],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrName[index],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrName[index],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrName[index],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrName[index],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          );
        },
        itemCount: arrName.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 50,
            thickness: 2,
            color: Colors.pink,
          );
        },
      ),
    );
  }
}
