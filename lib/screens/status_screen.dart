// ignore_for_file: prefer_const_constructors

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
                  title: Text(faker.person.name()),
                  subtitle: Text(faker.date.time()),
                  ),
                  
              ],
            ));
  }
}
