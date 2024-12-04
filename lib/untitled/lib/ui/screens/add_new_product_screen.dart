import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name = '/add-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _priceTEController = TextEditingController();
final TextEditingController _totalpriceTEController = TextEditingController();
final TextEditingController _quantityTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final TextEditingController _codeTEController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _addNewProductInProgress = false;

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    labelText: 'Product name',
                  ),
                  validator: (String? value){
                  if (value?.trim().isEmpty?? true){
                    return'Enter product name';
                  }
                  },
                ),
                TextFormField(
                  controller: _priceTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Price',
                    labelText: 'Product Price',
                  ),
                  validator: (String? value){
                    if (value?.trim().isEmpty?? true){
                      return'Enter product Price';
                    }
                  },),
                TextFormField(
                  controller: _totalpriceTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Total price',
                    labelText: 'Product Total price',
                  ),
                  validator: (String? value){
                    if (value?.trim().isEmpty?? true){
                      return'Enter product total price';
                    }
                  },),
                TextFormField(
                  controller: _quantityTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Quantity',
                    labelText: 'Product Quantity',
                  ),
                  validator: (String? value){
                    if (value?.trim().isEmpty?? true){
                      return'Enter product quantity';
                    }
                  },),
                TextFormField(
                  controller: _codeTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Code',
                    labelText: 'Product Code',
                  ),
                  validator: (String? value){
                    if (value?.trim().isEmpty?? true){
                      return'Enter product code';
                    }
                  },),
                TextFormField(
                  controller: _imageTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    hintText: 'Image url',
                    labelText: 'Product Image ',
                  ),
                  validator: (String? value){
                    if (value?.trim().isEmpty?? true){
                      return'Enter product image url';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                Visibility(
                  visible: _addNewProductInProgress == false,
                  replacement: const Center(
                    child: CircularProgressIndicator(),
                  ),
                  child: ElevatedButton(onPressed: (){
                   if(_formKey.currentState!.validate()){
                     _addNewProduct();
                   }
                  }, child:const Text('Add Product'),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void>_addNewProduct()async{
  _addNewProductInProgress = true;
  setState(() {});
  Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');

  Map<String,dynamic> requestBody = {
    "Img":_imageTEController.text.trim(),
    "ProductCode":_codeTEController.text.trim(),
    "ProductName":_nameTEController.text.trim(),
    "Qty":_quantityTEController.text.trim(),
    "TotalPrice":_totalpriceTEController.text.trim(),
    "UnitPrice": _priceTEController.text.trim(),
  };

    Response response = await post(
      uri,
      headers: {
        'Content-type' : 'application/json',
      },
      body: jsonEncode(requestBody),
    );
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress = false;
    setState(() {});
    if (response.statusCode == 200){
     _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New product added!'),
        ),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('New product add failed try again!'),
          ),
      );
    }
  }

  void _clearTextFields(){
    _nameTEController.clear();
    _priceTEController.clear();
    _codeTEController.clear();
    _totalpriceTEController.clear();
    _codeTEController.clear();
    _imageTEController.clear();
    _quantityTEController.clear();
  }

  @override
  void dispose() {
    _nameTEController;
    _priceTEController;
    _codeTEController;
    _totalpriceTEController;
    _codeTEController;
    _imageTEController;
    _quantityTEController;
    super.dispose();
  }
}
