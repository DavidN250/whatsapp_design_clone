// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/groups_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: (() {})),
            SizedBox(
              width: 10,
            ),
            IconButton(
                icon: Icon(Icons.bubble_chart_outlined), onPressed: (() {})),
            SizedBox(
              width: 10,
            ),
            IconButton(icon: Icon(Icons.more_vert), onPressed: (() {})),
          ],
          backgroundColor: Colors.green.shade800,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt_outlined)),
              Tab(text: 'CHATS'),
              Tab(text: 'GROUPS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS')
            ],
          ),
        ),
        body: TabBarView(children: [
          CameraScreen(),
          buildPage('Chats'),
          GroupScreen(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}

Widget buildPage(String text) {
  return Center(
    child: Text(text, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
  );
}
