import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prectice_for_flutter/models/product.dart';
import 'package:prectice_for_flutter/ui/screens/add_new_product_screen.dart';
import 'package:prectice_for_flutter/ui/screens/widgets/product_item.dart';
import 'package:http/http.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  static const String name = '/add-new-product';

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  List<Product> productList = [];
  bool _getProductListInProgress = false;

  @override
  void initState() {
    super.initState();
    _getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product list'),
        actions: [
          IconButton(
            onPressed: () {
              _getProductList();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: ()async{
          _getProductList();
        },
        child: Visibility(
          visible: _getProductListInProgress == false,
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                      product: productList[index],
                  );
                }
             ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNewProductScreen.name);
        },
        child:const Icon(Icons.add),
      ),
    );
  }

  Future<void> _getProductList()async{
    productList.clear();
    _getProductListInProgress = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response.statusCode);
    print(response.body);
    if(response.statusCode == 200){
    final decodedData = jsonDecode(response.body);
    _getProductListInProgress = false;
    setState(() {});
    print(decodedData['status']);
    for(Map<String,dynamic> p in decodedData['data']) {
      Product product = Product(
        id: p ['id'],
        productName: p ['ProductName'],
        productCode: p ['ProductCode'],
        quantity: p ['Qty'],
        unitPrice: p ['UnitPrice'],
        image: p ['Img'],
        totalPrice: p ['TotalPrice'],
        createdDate: p ['CreatedDate'],
      );
      productList.add(product);
    }
    setState(() {});
    }
    _getProductListInProgress = false;
    setState(() {});
  }
}
