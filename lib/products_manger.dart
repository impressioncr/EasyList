import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManger extends StatefulWidget {
  final String startingProduct;

  ProductManger(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductMangerState();
  }
}

class _ProductMangerState extends State<ProductManger> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(_addProducts)
      ),
      Products(_products)
    ],);
  }
}
