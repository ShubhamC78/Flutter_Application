// import 'package:flutter/material.dart';

// class Products extends StatelessWidget {
//   final List<String> products;

//   Products(this.products) {
//     print("Productrs constructor is called");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Build methoud called product");
//     return products.length > 0 ? ListView.builder(
//       itemBuilder: _buildProductItem,
//       itemCount: products.length,
//      ) :  Center(child: Text("please add something")); 
//   }

//   Widget _buildProductItem(BuildContext context, int index) {
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Image.asset('assets/food.jpg'),
//           Text(products[index])
//         ],
//       ),
//     );
//   }
// }
