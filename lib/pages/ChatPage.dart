import 'package:chatapp/CustomUI/CustomCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Samay Raina",
        isGroup: false,
        currentMessage: "Ghoda is not a respectible animal",
        time: "4:00",
        icon: "assets/person.svg"),
    ChatModel(
        name: "Sagar Shah",
        isGroup: false,
        currentMessage: "Alpha 0",
        time: "10:00",
        icon: "assets/person.svg"),
    ChatModel(
        name: "General Chat",
        isGroup: true,
        currentMessage: "Sab k sab bhadve hai",
        time: "4:00",
        icon: "assets/groups.svg"),
    ChatModel(
        name: "Amruta",
        isGroup: false,
        currentMessage: "Sagar tu samay k saath mt ja",
        time: "11:00",
        icon: "assets/person.svg"),
    ChatModel(
        name: "GamerFleet",
        isGroup: false,
        currentMessage: "Arrey Yaar",
        time: "12:00",
        icon: "assets/person.svg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.chat)),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
