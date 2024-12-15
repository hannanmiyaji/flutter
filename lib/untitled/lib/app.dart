import 'package:flutter/material.dart';
import 'package:untitled/models/product.dart';
import 'package:untitled/ui/screens/add_new_product_screen.dart';
import 'package:untitled/ui/screens/delete_post.dart';
import 'package:untitled/ui/screens/product_list_screen.dart';
import 'package:untitled/ui/screens/update_product_screen.dart';

class CROUDApp extends StatelessWidget {
  const CROUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        late Widget widget ;
        if (settings.name == '/'){
          widget = const ProductListScreen();
        }else if (settings.name == AddNewProductScreen.name){
          widget = const AddNewProductScreen();
        }else if (settings.name == UpdateProductScreen.name){
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(product: product);
        }else if (settings.name == DeletePost.name){
          final Product product = settings.arguments as Product;
          widget = DeletePost();
        }

        return MaterialPageRoute(
         builder: (context) {
          return widget;
        },
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
