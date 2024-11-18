import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                Navigator.pushNamed(context, '/Level');
              },
              child: Text(
                'Go to Next',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 11,
          ),
          TextField()
        ],
      ),
    );
  }
}
