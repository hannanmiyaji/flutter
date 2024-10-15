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
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Namber'),
              trailing: Icon(Icons.add),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 1,
            );
          },
          itemCount: arrNames.length),
    );
  }
}
