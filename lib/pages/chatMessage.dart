import 'package:flutter/material.dart';

const String _name = "shubha";

class ChatMessage extends StatelessWidget {
  String text;

  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(child: Text(_name[0],style: TextStyle(color: Colors.indigo ,fontSize: 25)) ,backgroundColor: Colors.grey,radius: 25, ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.subhead,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
