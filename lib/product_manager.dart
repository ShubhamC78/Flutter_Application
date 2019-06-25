// import 'package:flutter/material.dart';

// import './products.dart';
// import './product_control.dart';

// class ProductManager extends StatefulWidget {
//   //final String startingProduct;
//   ProductManager() {
//     print("Constructor ProductManager");
//   }
//   @override
//   State<StatefulWidget> createState() {
//     print("createState ProductManager");
//     // TODO: implement createState
//     return _ProductManagerState();
//   }
// }

// class _ProductManagerState extends State<ProductManager> {
//   List<String> _products = [];

//   @override
//   void initState() {
//     // print("Shubham   " + widget.startingProduct);
//     // if (widget.startingProduct != null) {
//     //  // _products.add(widget.startingProduct);
//     // }
//     // super.initState();
//     // print("Shubham   " + widget.startingProduct);
//   }

//   @override
//   void didUpdateWidget(ProductManager oldWidget) {
//     print("didUpdateWidget ProductManager");
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//   }

//   void _addProduct(String product) {
//     setState(() {
//       _products.add(product);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build ProductManager");
//     // TODO: implement build
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.all(10),
//           child: ProductControl(_addProduct),
//         ),
//         Expanded(child: Products(_products))
//       ],
//     );
//   }
// }
