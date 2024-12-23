import 'package:flutter/material.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/ui/screens/delete_post.dart';
import 'package:untitled/ui/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product,});

  final Product product;


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Image.network(product.image ?? '', width:  50,),
      title: Text(product.productName ?? 'Unknown'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code:${product.productCode ?? ''}'),
          Text('Product Quantity: ${product.quantity ?? ''}'),
          Text('Product Price: ${product.unitPrice ?? ''}'),
          Text('Product Price: ${product.totalPrice ?? ''}'),

        ],
      ),

      trailing: Wrap(
        children: [
          IconButton(
              onPressed: () {

               Navigator.pushNamed(context, DeletePost.name,  arguments: product);
               // _deletePost(product.id);

              }, icon: Icon(Icons.delete)),


          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    UpdateProductScreen.name,
                    arguments: product);
              }, icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}

