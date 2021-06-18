import 'package:chatapp/CustomUI/ButtonCard.dart';
import 'package:chatapp/CustomUI/ContactCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
          name: "Contact name/no.", status: "Hi There i am using whatsapp"),
      ChatModel(
          name: "Contact name/no.", status: "Hi There i am using whatsapp"),
      ChatModel(
          name: "Contact name/no.", status: "Hi There i am using whatsapp"),
      ChatModel(
          name: "Contact name/no.", status: "Hi There i am using whatsapp"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("256 Contacts",
                style: TextStyle(
                  fontSize: 13,
                )),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 26,
              )),
          PopupMenuButton<String>(itemBuilder: (BuildContext contesxt) {
            return [
              PopupMenuItem(
                child: Text("Invite a friend"),
                value: "Invite a friend",
              ),
              PopupMenuItem(
                child: Text("Contacts"),
                value: "Contacts",
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                value: "Refresh",
              ),
              PopupMenuItem(
                child: Text("Help"),
                value: "Help",
              ),
            ];
          })
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ButtonCard(
                icon: Icons.group,
                name: "New group",
              );
            } else if (index == 1) {
              return ButtonCard(
                icon: Icons.person_add,
                name: "New contact",
              );
            }
            return ContactCard(
              contact: contacts[index - 2],
            );
          }),
    );
  }
}
