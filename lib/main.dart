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
      theme: ThemeData(primarySwatch: Colors.green ),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),);
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Hannan"),
        titleSpacing: 15,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: (){MySnackBar('I am a Home',context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySnackBar('I am a Search',context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('I am a Contact',context);}, icon: Icon(Icons.contact_page)),
          IconButton(onPressed: (){MySnackBar('I am a Profile',context);}, icon: Icon(Icons.person)),
          IconButton(onPressed: (){MySnackBar('I am a Message',context);}, icon: Icon(Icons.message)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add,size: 50,),
        onPressed: (){MySnackBar('I am a Home',context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.cyanAccent,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: "Contact"),
          ],
          onTap: (int index){
            if(index==0){
              MySnackBar("I am a Home Bottum menu",context);
            }
            if(index==1){
              MySnackBar("I am a Email Bottum menu",context);
            }
            if(index==2){
              MySnackBar("I am a Contact Page Bottum menu",context);
            }
          }
      ),
      drawer: Drawer(
        backgroundColor:Color(0xFFFFECB3),
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyanAccent),
                  accountName: Text("Hannan"),
                  accountEmail: Text("hannanmiyaji729@gmail.com"),
                  currentAccountPicture:Image.network("https://picsum.photos/250?image=9") ,

                )
            ),

            ListTile(title: Text("Home"),
              leading: Icon(Icons.home,color: Colors.red,),onTap: (){
                MySnackBar('I am a Home',context);},),

            ListTile(title: Text("Search"),leading: Icon(Icons.search),),
            ListTile(title: Text("Profile"),leading: Icon(Icons.person),),
            ListTile(title: Text("Contact"),leading: Icon(Icons.contact_page),),
            ListTile(title: Text("Email"),leading: Icon(Icons.email),),
            ListTile(title: Text("Message"),leading: Icon(Icons.message),),
            ListTile(title: Text("Favorite"),leading: Icon(Icons.favorite),),

          ],
        ),
      ),

    );
  }
}


