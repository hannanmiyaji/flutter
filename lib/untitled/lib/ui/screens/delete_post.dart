
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class DeletePost extends StatelessWidget {
  //final String apiUrl = 'https://crud.teamrabbil.com/api/v1/DeleteProduct/675c7291acce3638bb5e0ad2';

  static const String name = '/delete_post';
 // final DeletePost deletePost;

  Future<void> delete(String postid, BuildContext context) async {
    try {
      // final response = await delete(
      //   Uri.parse('$apiUrl/$postid'),
      //   headers: {'Content-Type': 'application/json'},
      // );
      //
      // if (response.statusCode == 200) {
      //
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Item deleted successfully!')),
      //   );
      // } else {
      //
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Failed to delete the item.')),
      //   );
      // }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  void showDeleteDialog(BuildContext context, String itemId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Confirmation'),
          content: Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                //deleteItem(itemId, context); // Trigger delete API
              },
              child: Text('Delete'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delete Dialog Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDeleteDialog(context, '12345'), // Example item ID
          child: Text('Show Delete Dialog'),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: DeletePost()));




