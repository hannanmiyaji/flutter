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
        title: Text("MyApp Bar"),
        backgroundColor: Colors.green,
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80), topRight: Radius.circular(80)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
                shadowColor: Colors.yellow,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.black, width: 3),
                ),
                minimumSize: Size(150, 50),
                maximumSize: Size(350, 350),
              ),
              onPressed: () {
                showDialog(
                    barrierColor: Color(0xFFC8E6C9),
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Delete'),
                        content: Text('Are you sure?'),
                        actions: [
                          TextButton(onPressed: () {}, child: Text('No')),
                          TextButton(onPressed: () {}, child: Text('Yes')),
                        ],
                      );
                    });
              },
              child: Text("Tap"),
            ),
            SizedBox(height: 24),
            TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  print('Tapped text button');
                },
                child: Text("Tap here")),
            SizedBox(height: 24),
            IconButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  print('Tapped text button');
                },
                icon: Icon(Icons.home)),
            SizedBox(height: 24),
            OutlinedButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  print('Tapped text button');
                },
                child: Text("Click here")),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                print("Just one click");
              },
              onDoubleTap: () {
                print("Double tapped");
              },
              child: Column(
                children: [
                  Text("Simple Text"),
                  Text("Simple Text"),
                  Text("Simple Text"),
                  Text("Simple Text"),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.orange,
              onTap: () {
                print("In Well");
              },
              child: Text('Behave like button'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.account_balance),
      ),
    );
  }
}