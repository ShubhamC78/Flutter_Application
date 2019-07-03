import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Test",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHUBHAM"),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.info),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[NewPage("First"), NewPage("Second")],
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  String title;

  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}

// navigation
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import './pages/pageFirst.dart';
// import './pages/pageSecond.dart';

// void main() {
//   return runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.amber),
//       home: HomePage(),
//       routes: {
//         // When navigating to the "/" route, build the FirstScreen widget.
//         '/first': (context) => PageFirst(),
//         // When navigating to the "/second" route, build the SecondScreen widget.
//         '/second': (context) => PageSecond(),
//       },
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Navigation Application"),
//         elevation: defaultTargetPlatform == TargetPlatform.android ? 5 : 0,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               title: Text("Page one"),
//               trailing: Icon(Icons.arrow_upward),
//               onTap: () => Navigator.of(context).popAndPushNamed('/first'),
//             ),
//             ListTile(
//               title: Text("Page tow"),
//               trailing: Icon(Icons.arrow_downward),
//               onTap: () => Navigator.of(context).popAndPushNamed('/second'),
//             ),
//             ListTile(
//               title: Text("Close"),
//               trailing: Icon(Icons.close),
//               onTap: () => {},
//             )
//           ],
//         ),
//       ),
//       body: Container(
//         child: Center(
//           child: Text("data"),
//         ),
//       ),
//     );
//   }
// }

// http call
//import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main(List<String> args) {
//   return runApp(MaterialApp(
//     theme: ThemeData(primarySwatch: Colors.teal),
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() {
//     // TODO: implement createState
//     return HomePageState();
//   }
// }

// class HomePageState extends State<HomePage> {
//   final String url = "https://swapi.co/api/people";

//   List data;

//   @override
//   void initState() {
//     super.initState();
//     this.getJsonData();
//   }

//   Future<String> getJsonData() async {
//     var response = await http
//         .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
//     print(response.body);

//     setState(() {
//       var jsonData = jsonDecode(response.body);
//       data = jsonData['results'];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("New API"),
//       ),
//       body: new ListView.builder(
//         itemCount: data == null ? 0  : data.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             child: Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Card(
//                     child: Container(
//                       child: Text(data[index]['name']),
//                       padding: EdgeInsets.all(10),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//  JSON Code
// import 'package:flutter/material.dart';
// import 'dart:convert';

// void main(List<String> args) {
//   return runApp(MaterialApp(
//     theme: ThemeData(
//       primarySwatch: Colors.teal,
//     ),
//     home: new HomePage(),
//   ));
// }

// class HomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return new HomePageState();
//   }
// }

// class HomePageState extends State<HomePage> {
//   List data;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Load Json App"),
//       ),
//       body: Container(
//         child: Center(
//           child: FutureBuilder(
//             future: DefaultAssetBundle.of(context)
//                 .loadString('load_json/person.json'),
//             builder: (context, snapshot) {
//               //Decode JSON
//               var myData = jsonDecode(snapshot.data.toString());
//               return ListView.builder(
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Text("Name :" + myData[index]['name']),
//                         Text("Age :" + myData[index]['age'])
//                       ],
//                     ),
//                   );
//                 },
//                 itemCount: myData == null ? 0 : myData.length,
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import './pages/home.dart';
// void main(List<String> args) {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       title: "Chat App",
//       home: HomePage(),
//     );
//   }

// }
