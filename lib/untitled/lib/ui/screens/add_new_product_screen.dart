import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name = '/add_new_product';

  @override
  State<AddNewProductScreen> createState() =>  _AddNewProductScreenState();
}

final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _codeTEController = TextEditingController();
final TextEditingController _queantityTEController = TextEditingController();
final TextEditingController _priceTEController = TextEditingController();
final TextEditingController _totalpriceTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _addNewProductInProgress = false;
bool _delete = false;

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildProductForm(),
        ),
      )
    );
  }

  Widget _buildProductForm() {
    return Form(
      key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
            SizedBox(height: 16,),
            TextFormField(
              controller: _queantityTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
            SizedBox(height: 16,),
            TextFormField( controller: _codeTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
            SizedBox(height: 16,),
            TextFormField( controller: _imageTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
            SizedBox(height: 16,),
            TextFormField(
              controller: _priceTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
            SizedBox(height: 16,),
            TextFormField( controller: _totalpriceTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.number,
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
              },
            ),
            const SizedBox(height: 16,),
            Visibility(
              visible: _addNewProductInProgress == false,
              replacement: const Center(
                child: CircularProgressIndicator(),
              ),

              child: ElevatedButton(
                onPressed: (){
                if (_formKey.currentState!.validate()){
                  _addNewProduct();
                }
              }, child: Text('Add Product'),),
            ),
          ],
        ),
      );
  }

  Future<void> _addNewProduct() async {
    _addNewProductInProgress = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');

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
     body: jsonEncode(requestBody),
   );
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress = false;
    setState(() {});
    if(response.statusCode == 200){
     _clearTextFields();
     ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New procuct added'),
        ),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New procuct add failed! Try again'),
        ),
      );
    }
  }

  void _clearTextFields(){
    _nameTEController.clear();
    _codeTEController.clear();
    _priceTEController.clear();
    _totalpriceTEController.clear();
    _imageTEController.clear();
    _queantityTEController.clear();
  }

@override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _priceTEController.dispose();
    _totalpriceTEController.dispose();
    _imageTEController.dispose();
    _queantityTEController.dispose();
    super.dispose();
  }
}
