import 'dart:core';

import 'package:chat_application_ui/Utils/message.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class MyChatScreen extends StatefulWidget {
  final String? title;

  const MyChatScreen({Key? key, this.title}) : super(key: key);

  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChatScreen> {
  final List<Message> _messages = <Message>[];

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd hh:mm').format(time);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat App',
          style: TextStyle(color: Colors.red),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: IconTheme(
                data: IconThemeData(
                    color: Theme.of(context).colorScheme.secondary),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 48.0,
                        height: 48.0,
                        child: IconButton(
                            icon: Image.asset("assets/images/send_in.png"),
                            onPressed: () => _sendMsg(
                                _textController.text, 'left', formattedDate)),
                      ),
                      Flexible(
                        child: TextField(
                          controller: _textController,
                          decoration: const InputDecoration.collapsed(
                              hintText: "Enter message"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                        width: 48.0,
                        height: 48.0,
                        child: IconButton(
                          icon: Image.asset("assets/images/send_out.png"),
                          onPressed: () => _sendMsg(
                              _textController.text, 'right', formattedDate),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMsg(String msg, String messageDirection, String date) {
    if (msg.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please Enter Message",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue);
    } else {
      _textController.clear();
      Message message = Message(
        msg: msg,
        direction: messageDirection,
        dateTime: date,
      );
      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
