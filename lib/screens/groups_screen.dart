import 'package:flutter/material.dart';


class GroupScreen extends StatefulWidget {
  const GroupScreen({ Key? key }) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        body: Center(child: Text('Group Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green.shade800,
          onPressed: () {},
          child: const Icon(Icons.add),
          ));
  }
}
