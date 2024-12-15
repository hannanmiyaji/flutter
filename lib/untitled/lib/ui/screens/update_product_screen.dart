import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:untitled/models/product.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key, required this.product});

  static const String name = '/update_product';

  final Product product;

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _queantityTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalpriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  bool _updateProductInProgress = false;
  final GlobalKey<FormState> _globalKey= GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _nameTEController.text = widget.product.productName ?? '';
    _queantityTEController.text = widget.product.quantity ?? '';
    _codeTEController.text = widget.product.productCode ?? '';
    _priceTEController.text = widget.product.unitPrice ?? '';
    _totalpriceTEController.text = widget.product.totalPrice ?? '';
    _imageTEController.text = widget.product.image ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Update product'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: _buildProductForm(),
          ),
        )
    );
  }

  Widget _buildProductForm(){
    return Form(
      key: _globalKey     ,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Product name',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter product name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField( controller: _queantityTEController,
              decoration: InputDecoration(
                hintText: 'Queantity',
                labelText: 'Product queantity',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter product queantity';
                }
                return null;
              },),
            SizedBox(height: 16),
            TextFormField( controller: _codeTEController,
              decoration: InputDecoration(
                hintText: 'Code',
                labelText: 'Product Code',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter product Code';
                }
                return null;
              },),
            SizedBox(height: 16),
            TextFormField(
              controller: _priceTEController,
              decoration: InputDecoration(
                hintText: 'Price',
                labelText: 'Product Price',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter product price';
                }
                return null;
              },),
            SizedBox(height: 16),
            TextFormField( controller: _imageTEController,
              decoration: InputDecoration(
                hintText: 'Image',
                labelText: 'Image uri',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter image uri';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField( controller: _totalpriceTEController,
              decoration: InputDecoration(
                hintText: 'Total price',
                labelText: 'Product total price',
                border: OutlineInputBorder(),
              ),
              validator: (String? value){
                if(value?.trim().isEmpty ?? true){
                  return 'Enter product total price';
                }
                return null;
              },),

            const SizedBox(height: 16,),
            Visibility(
              visible: _updateProductInProgress == false,
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),
              child: ElevatedButton(onPressed: (){

                if(_globalKey.currentState!.validate()){
                  print('success');
                }else{
                  print('Invalid');
                }
                _updateProduct();
              }, child: Text('Update Product'),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _updateProduct() async {
  _updateProductInProgress = true;
  setState(() {});
   Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/UpdateProduct/${widget.product.id}');

  Map<String, dynamic> requestBody = {
    "Img":_imageTEController.text.trim(),
    "ProductCode":_codeTEController.text.trim(),
    "ProductName":_nameTEController.text.trim(),
    "Qty":_queantityTEController.text.trim(),
    "TotalPrice":_totalpriceTEController.text.trim(),
    "UnitPrice":_priceTEController.text.trim(),
  };

   Response response = await post(
       uri,
       headers: {
         'Content-type': 'application/json',
       },
       body: jsonEncode(requestBody));
   print(response.statusCode);
   print(response.body);
   _updateProductInProgress = false;
   setState(() {});
   if (response.statusCode == 200){
     ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Product has been updated!'),
        ),
      );
    }else {
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
         content: Text('Product update! failed Try again'),
       ),
     );
   }
  }






  @override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _queantityTEController.dispose();
    _priceTEController.dispose();
    _totalpriceTEController.dispose();
    _imageTEController.dispose();
    super.dispose();
  }
}



