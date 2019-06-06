import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct) {
    print("Constructor ProductManager");
  }
  @override
  State<StatefulWidget> createState() {
    print("createState ProductManager");
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print("initState ProductManager");
    super.initState();
    _products.add(widget.startingProduct);
    print("Shubham   " + widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("didUpdateWidget ProductManager");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build ProductManager");
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: RaisedButton(

            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('ads Food Testr');
                print(_products);
              });
            },
          ),
        ),
        Products(_products)
      ],
    );
  }
}
