import 'package:flutter/material.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/ui/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {


  const ProductItem({super.key,required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Image.network(product.image ?? ''),
      title: Text(product.productName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: #CODE${product.productName ?? ''}'),
          Text('Quantity:${product.quantity ?? ''}'),
          Text('Price: ${product.unitPrice ?? ''}'),
          Text('Total Price: ${product.totalPrice ?? ''}'),

        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete),),
          IconButton(
            onPressed: () {
             Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ) ,
    );
  }
}
