
// ignore_for_file: prefer_const_constructors
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/message_screen.dart';
import '../provider/chat_model.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  GroupScreenState createState() {
    return GroupScreenState();
  }
}

class GroupScreenState extends State<GroupScreen> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
            children: <Widget>[
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[i].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(faker.person.name(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(faker.date.time(),
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(faker.lorem.sentence(),
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
                onTap: (){
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MessageScreen()),
                  );
                },
              )
            ],
          ),
    );
  }
}