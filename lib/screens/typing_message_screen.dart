// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TypingScreen extends StatefulWidget {
  const TypingScreen({Key? key}) : super(key: key);

  @override
  State<TypingScreen> createState() => _TypingScreenState();
}

class _TypingScreenState extends State<TypingScreen>{

  final TextEditingController ctlMessageText = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextField(
      controller: ctlMessageText,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: 'Type a message',
          suffix: IconButton(
            icon: Icon(Icons.send),
            splashColor: Colors.blue,
            tooltip: 'Post a Message',
            onPressed: () {},
          )),
    ));
  }
}
