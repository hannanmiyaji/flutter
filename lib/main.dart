import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> friendList = [
    'Miraj',
    'Shawon',
    'Ice',
    'Rakib',
    'Jahangir',
    'Rofiq',
    'Jabbar',
    'Hasan',
    'Miraj',
    'Shawon',
    'Ice',
    'Rakib',
    'Jahangir',
    'Rofiq',
    'Jabbar',
    'Hasan',
  ];

  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Colors.orange,
        title: Text('MyApp'),
      ),
      // body:ListView.builder(
      //     itemCount: friendList.length,
      //     itemBuilder: (context,index){
      //       return ListTile(
      //
      //         title: Text(friendList[index],style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
      //         subtitle: Text('Friends no$index',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      //         trailing: Icon(Icons.arrow_forward),
      //         leading:
      //         CircleAvatar(
      //           child: Icon(Icons.person),),
      //
      //         onTap: (){
      //           print('on tap$index');
      //         },
      //
      //         onLongPress: (){
      //           print('On long press$index');
      //         },
      //
      //         tileColor: Color(0xFFC8E6C9),
      //         contentPadding: EdgeInsets.symmetric(
      //           horizontal: 24,
      //           vertical: 4,),
      //
      //         dense: true,
      //
      //         titleTextStyle: TextStyle(color: Colors.red),
      //         subtitleTextStyle: TextStyle(color: Colors.blue),
      //
      //       );
      //     }
      // ),

      // body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      // crossAxisCount: 3,
      // mainAxisSpacing: 8,
      // crossAxisSpacing: 8),
      // children: [
      //   Text('Taile'),
      //   Text('Taile'),
      //   Text('Taile'),
      //   Text('Taile'),
      //   Text('Taile'),
      //   Text('Taile'),
      // ],
      // ),

      // body: GridView.builder(gridDelegate:
      //       SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 4),
      //       itemCount:friendList.length,
      //       itemBuilder:  (context,index){
      //       return Center(child: Text(friendList[index]),);
      // },
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Form(
      //     key: _formKey,
      //     child: Column(
      //       children: [
      //         TextFormField(
      //           autovalidateMode: AutovalidateMode.always,
      //           controller: _emailTEController,
      //           decoration: InputDecoration(
      //             hintText: 'Email',),
      //           validator:(String? value){
      //             if(value == null || value.isEmpty) {
      //               return 'Enter your email';
      //             }
      //             return null;
      //           } ,
      //         ),
      //
      //
      //         TextFormField(
      //           autovalidateMode: AutovalidateMode.always,
      //           controller: _passwordTEController,
      //           decoration: InputDecoration(
      //             hintText: 'Password',),
      //           validator: (String? value){
      //             if(value?.isEmpty ?? true){
      //             return 'Enter your password';
      //             }
      //             return null;
      //           },
      //         ),
      //
      //
      //         ElevatedButton(
      //           onPressed: (){
      //           // String email = _emailTEController.text;
      //           // String password = _passwordTEController.text;
      //           // if(email.isNotEmpty && password.isNotEmpty){
      //           //   print('Login success');
      //           // }else{
      //           //   print('Login failed. Missing data');
      //           // }
      //
      //
      //             if (_formKey.currentState!.validate()){
      //               print('Login success');
      //             }
      //         },
      //           child: Text('Login'),),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}