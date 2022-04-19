// ignore_for_file: prefer_const_constructors, dead_code

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController ctlMessageText = TextEditingController();
    Faker faker = Faker();
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        leading: IconButton(
          onPressed: (){
                   Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const MessageScreen()),
                  );
                },
          icon: Icon(Icons.arrow_back_sharp)) ,

        title: Text(faker.phoneNumber.us()),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.video_call_rounded),
          Icon(Icons.call),
          Icon(Icons.location_searching_sharp),
          Icon(Icons.more_vert_outlined)
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
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
      ),
    );
  }
}
