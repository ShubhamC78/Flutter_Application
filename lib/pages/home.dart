import 'package:flutter/material.dart';

import './chatScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Support Chat")),
        ),
        body: ChatScreen()
    );
  }
}


 

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('EasyList'),
//       ),
//       body: Text("data"),
//     );
//   }
// }

// class HomePage extends StatefulWidget {

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   var num1=0, num2 =0 ,sum =0;

//     void doAddition(){
//       setState(() {
//         num1 = int.parse(t1.text);
//         num2 = int.parse(t2.text);
//         sum = num1 + num2;
//       });
//     }

//   final TextEditingController t1 = new TextEditingController(text: "0");
//   final TextEditingController t2 = new TextEditingController(text: "0");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Calculator"),
//       ),
//       body: new Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(hintText: "Enter number 1"),
//               controller: t1,
//             ),
//             TextField(
//               keyboardType: TextInputType.number,
//               controller: t2,
//               decoration: InputDecoration(hintText: "Enter number 2"),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 40),
//             ),
//             Row(
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text("ADD"),
//                   onPressed: doAddition,
//                 ),
//                 RaisedButton(
//                   child: Text("MINUS"),
//                   onPressed: () => {print("MINUS pressed")},
//                 ),
//                 RaisedButton(
//                   child: Text("DIVIDE"),
//                   onPressed: () => {print("DIVIDE pressed")},
//                 ),
//                 RaisedButton(
//                   child: Text("MULTIPLY"),
//                   onPressed: () => {print("MULTIPLY pressed")},
//                 )
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 30),
//               height: 100,
//               width: 300,
//               child: Text(
//                 "Output : $sum",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20 ,color: Colors.lightBlue, ) ,
//               ),
//               color: Colors.amber,

//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
