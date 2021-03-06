import 'package:chatapp/pages/CameraPage.dart';
import 'package:chatapp/pages/ChatPage.dart';
import 'package:chatapp/pages/StatusPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(itemBuilder: (BuildContext contesxt) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("New Broadcast"),
                value: "New Broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Starred Message"),
                value: "Starred Message",
              ),
              PopupMenuItem(
                child: Text("Setting"),
                value: "Setting",
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        CameraPage(),
        ChatPage(),
        StatusPage(),
        Text('Calls'),
      ]),
    );
  }
}
