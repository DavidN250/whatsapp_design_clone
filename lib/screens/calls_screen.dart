import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({ Key? key }) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        body: Center(child: Text('Calls Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade800,
          onPressed: () {},
          child: const Icon(Icons.add),
          ));
  }
}