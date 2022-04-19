// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(faker.image.image()),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(faker.person.name()),
                      Icon(Icons.call)
                      ],
                  ),
                  subtitle: Text(faker.date.time()),
                )],
            ));
  }
}
