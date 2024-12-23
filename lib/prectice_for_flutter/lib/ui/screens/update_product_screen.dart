import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:prectice_for_flutter/models/product.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key, required this.product});

  static  String name = '/update-product';

  final Product product;

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}
class _UpdateProductScreenState extends State<UpdateProductScreen> {
final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _codeTEController = TextEditingController();
final TextEditingController _quantityTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final TextEditingController _priceTEController = TextEditingController();
final TextEditingController _totalpriceTEController = TextEditingController();
bool _updateProductInProgress = false;

@override
  void initState() {
    super.initState();
    _nameTEController.text = widget.product.productName ?? '';
    _codeTEController.text = widget.product.productCode ?? '';
    _quantityTEController.text = widget.product.quantity?? '';
    _imageTEController.text = widget.product.image ?? '';
    _priceTEController.text = widget.product.unitPrice ?? '';
    _totalpriceTEController.text = widget.product.totalPrice ?? '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update procuct'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: _ulidProductForm(),
        ),
      ),
    );
  }

  Widget _ulidProductForm() {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _nameTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product name',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                        width:4,color:Colors.orange
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product Code',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4,color:Colors.green,
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product Code';
              }
              return null;
            },),
          SizedBox(height: 16),
          TextFormField(
            controller: _quantityTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product Quantity',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4,color:Colors.yellowAccent,
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product imege url';
              }
              return null;
            },),
          SizedBox(height: 16),
          TextFormField(
            controller: _imageTEController,
            decoration: InputDecoration(
              hintText: 'Image',
              labelText: 'Image url',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4,color:Colors.grey,
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product Image url';
              }
              return null;
            },),
          SizedBox(height: 16),
          TextFormField(
            controller: _priceTEController,
            decoration: InputDecoration(
              hintText: 'Price',
              labelText: 'Product price',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4,color:Colors.black,
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product price';
              }
              return null;
            },),
          SizedBox(height: 16),
          TextFormField(   controller: _totalpriceTEController,
            decoration: InputDecoration(
              hintText: 'Total price',
              labelText: 'Product Total price',
              border: OutlineInputBorder(),
              enabledBorder: (
                  OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4,color:Colors.tealAccent,
                    ),
                  )
              ),
            ),
            validator: (String? value){
              if(value?.trim().isEmpty ?? true){
                return 'Enter product totalprice';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Visibility(
            visible: _updateProductInProgress == false,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ElevatedButton(onPressed: (){

            }, child: Text('Update Product'),),
          ),
        ],
      ),
    );
  }
  Future<void> _updateProduct()async{
  _updateProductInProgress = true;
  setState(() {});
  Uri uri = Uri.parse(
      'https://crud.teamrabbil.com/api/v1/UpdateProduct/${widget.product.id}');

  Map<String, dynamic> requestBody = {
    "Img": _imageTEController.text.trim(),
    "ProductCode": _codeTEController.text.trim(),
    "ProductName": _nameTEController.text.trim(),
    "Qty": _quantityTEController.text.trim(),
    "TotalPrice": _totalpriceTEController.text.trim(),
    "UnitPrice": _priceTEController.text.trim(),
  };

  Response response = await post(
      uri,
    headers: {'Content-type':'application/json'},
      body: jsonEncode(requestBody),
  );
  print(response.statusCode);
  print(response.body);
  _updateProductInProgress = false;
  setState(() {});
  if(response.statusCode == 200){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Product has been update!'),
        ),
      );
    }else{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Product update failed! Try again'),
      ),
    );
  }
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();
    _imageTEController.dispose();
    _priceTEController.dispose();
    _totalpriceTEController.dispose();
    super.dispose();
  }

}
