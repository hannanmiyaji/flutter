
import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  static const String name = '/update-product';

  @override
  State<UpdateProductScreen> createState() => _AddNewProductScreenState();
}

final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _priceTEController = TextEditingController();
final TextEditingController _totalpriceTEController = TextEditingController();
final TextEditingController _quantityTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final TextEditingController _codeTEController = TextEditingController();

class _AddNewProductScreenState extends State<UpdateProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('update product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _nameTEController,
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
                ElevatedButton(onPressed: (){}, child:const Text('Update Product'),),
              ],
            ),
          ),
        ),
      ),
    );
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
