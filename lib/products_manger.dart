import 'package:flutter/material.dart';

import './products.dart';

class ProductManger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductMangerState();
  }
}

class _ProductMangerState extends State<ProductManger> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
          child: Text('Add Product'),
        )
      ),
      Products(_products)
    ],);
  }
}