
import 'package:flutter/material.dart';
import 'package:prectice_for_flutter/models/product.dart';
import 'package:prectice_for_flutter/ui/screens/licenses_product_Screen.dart';
import 'package:prectice_for_flutter/ui/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});


  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.image ?? '',width: 50,),
      title: Text(product.productName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code:${product.productCode ?? ''}'),
          Text('Product Images'),
          Text('Quantity:${product.quantity ?? ''}'),
          Text('Price:${product.unitPrice ?? ''}'),
          Text('Total price:${product.totalPrice ?? ''}'),
        ],
      ),

      trailing: Wrap(
        children: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, LicensesProductScreen.name);
          }, icon: Icon(Icons.list)),



          IconButton(
              onPressed: (){
           Navigator.pushNamed(context, UpdateProductScreen.name,
               arguments: product );
              }, icon: Icon(Icons.edit)),
        ],
      ),
    );
  }
}

