import 'package:flutter/material.dart';
import 'package:flutter_course/pages/chatMessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreeState();
  }
}

class ChatScreeState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    print("Shubham" + text);
    if (text == null || text == "") {
    } else {
      ChatMessage message = new ChatMessage(text: text);
      setState(() {
        _messages.insert(0, message);
      });
    }

    _textController.clear();
  }

  Widget _textComposerWidget() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Send a message"),
              controller: _textController,
              onSubmitted: _handleSubmitted,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        Divider(height: 1),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
