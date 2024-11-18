import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              Navigator.pushNamed(context, '/Profile');
            },
            child: Text(
              'Go to next page',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 12),
          TextField(),
        ],
      ),
    );
  }
}
