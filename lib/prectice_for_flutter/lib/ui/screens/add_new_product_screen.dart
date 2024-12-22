import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static String name = '/add-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _codeTEController = TextEditingController();
final TextEditingController _quantityTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final TextEditingController _priceTEController = TextEditingController();
final TextEditingController _totalpriceTEController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
bool _addNewProductInProgress = false;

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new procuct'),
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
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _nameTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product name',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(width: 4, color: Colors.orange),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _codeTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product Code',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.green,
                ),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product Code';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            controller: _quantityTEController,
            decoration: InputDecoration(
              hintText: 'Name',
              labelText: 'Product Quantity',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.yellowAccent,
                ),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product imege url';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _imageTEController,
            decoration: InputDecoration(
              hintText: 'Image',
              labelText: 'Image url',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.grey,
                ),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product Image url';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _priceTEController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Price',
              labelText: 'Product price',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.black,
                ),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product price';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: _totalpriceTEController,
            decoration: InputDecoration(
              hintText: 'Total price',
              labelText: 'Product Total price',
              border: OutlineInputBorder(),
              enabledBorder: (OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.tealAccent,
                ),
              )),
            ),
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return 'Enter product totalprice';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Visibility(
            visible: _addNewProductInProgress == false,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _addNewProduct();
                }
              },
              child: Text('Add Product'),
            ),
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
      "Img": _imageTEController.text.trim(),
      "ProductCode": _codeTEController.text.trim(),
      "ProductName": _nameTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalpriceTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
    };

    Response response = await post(
      uri,
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(requestBody),
    );
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress = false;
    setState(() {});
    if (response.statusCode == 200) {
      _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New product added!'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New product add failed! Try again'),
        ),
      );
    }
  }

  void _clearTextFields() {
    _nameTEController.clear();
    _codeTEController.clear();
    _quantityTEController.clear();
    _imageTEController.clear();
    _priceTEController.clear();
    _totalpriceTEController.clear();
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
