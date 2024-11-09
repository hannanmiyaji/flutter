import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('My Profile',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              size: 28,
            ),
            onPressed: () {
              // Action when notification button is pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Action when settings button is pressed
            },
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFFCE93D8),
              radius: 80,
              backgroundImage: AssetImage('assets/images/ice_icon.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Ice cream is very delicious!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),

            CircleAvatar(
              backgroundColor: Color(0xFFCE93D8),
              radius: 80,
              backgroundImage: AssetImage('assets/images/code_icon.png'),

            ),
            SizedBox(height: 32),
            Text(
              'Programming is not boring if you love it',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),

            CircleAvatar(
              backgroundColor: Color(0xFFCE93D8),
              radius: 80,
              backgroundImage: AssetImage('assets/images/agg_icon.png'),
            ),
            SizedBox(height: 32),
            Text(
              'The egg healthy for human body ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
