import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Level'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              Navigator.pushNamed(context, '/Simple');
            },
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          TextField(),
        ],
      ),
    );
  }
}
