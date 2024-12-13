import 'package:flutter/material.dart';

class DeletePost extends StatefulWidget {
  const DeletePost({super.key, required this.deletePost});

  static const String name = '/delete_post';

  final DeletePost deletePost;

  @override
  State<DeletePost> createState() => _DeletePostState();
}

class _DeletePostState extends State<DeletePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Post'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             AlertDialog(
               title: const Text('Delete'),
               content: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text('This is a custom alert dialog with an icon')
                 ],
               ),
               actions: [
                  TextButton(onPressed: (){}, child: Text('Delete Post')),
               ],
             ),
          ],
        ),
      ),
    );
  }
  Future<String>deletePost(String id)async{
    final url = Uri.parse('https://crud.teamrabbil.com/api/v1/DeleteProduct/639da5960817590a4e4fd53c');
  }
}
