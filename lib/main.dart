import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("MyApp Bar"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                //showAboutDialog(context: context);
                showModalBottomSheet(
                    //backgroundColor: Color(0xFFC8E6C9),
                    backgroundColor: Color(0xFFFFE0B2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    // isScrollControlled: true,
                    useSafeArea: true,
                    enableDrag: true,
                    context: context,
                    builder: (tex) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Title',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 100,
                            thickness: 8,
                          ),
                          Text('Sample'),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Cancel')),
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Save')),
                            ],
                          )
                        ],
                      );
                    });
              },
              child: Text('Show dialog'),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                maxLength: 50,
                onChanged: (String? value) {
                  print(value);
                },
                controller: TextEditingController(),
                maxLines: 1,
                obscureText: true,

                // keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey.shade400),
                  labelText: 'Phone number',
                  suffixIcon: Icon(Icons.phone),
                  prefix: Icon(Icons.person),
                  fillColor: Color(0xFFFFCCBC),
                  filled: true,
                  hoverColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}