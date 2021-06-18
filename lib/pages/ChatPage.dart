import 'package:chatapp/CustomUI/CustomCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Arshad Ansari",
      isGroup: false,
      currentMessage: "Hi There",
      time: "4:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "Akram",
      isGroup: false,
      currentMessage: "Hi man",
      time: "10:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "MECH Group",
      isGroup: true,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "assets/groups.svg",
    ),
    ChatModel(
      name: "Lucky",
      isGroup: false,
      currentMessage: "Can you do this?",
      time: "11:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "Arvind",
      isGroup: false,
      currentMessage: "Ohh man",
      time: "12:00",
      icon: "assets/person.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => SelectContact()));
          },
          child: Icon(Icons.chat)),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
