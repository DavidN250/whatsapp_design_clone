// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class StatusScreen extends StatefulWidget {
  const StatusScreen({ Key? key }) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Status Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)));
  }
}