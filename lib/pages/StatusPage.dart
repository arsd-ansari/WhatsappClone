import 'package:chatapp/CustomUI/StatusPage/HeadOwnStatus.dart';
import 'package:chatapp/CustomUI/StatusPage/OthersStatus.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: 48,
              child: FloatingActionButton(
                  backgroundColor: Colors.blueGrey[100],
                  elevation: 8,
                  onPressed: () {},
                  child: Icon(
                    Icons.edit,
                    color: Colors.blueGrey[900],
                  ))),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 20,
            // ),
            HeadOwnStatus(),
            label("Recent updates"),
            OthersStatus(
              name: "Mujjkir",
              imageName: "assets/2.jpg",
              time: "02:15",
            ),
            OthersStatus(
              name: "Asif",
              imageName: "assets/3.jpg",
              time: "03:15",
            ),
            SizedBox(
              height: 10,
            ),
            label("Viewed updates"),
            OthersStatus(
              name: "Lucky",
              imageName: "assets/4.jpg",
              time: "04:15",
            ),
            OthersStatus(
              name: "Arvind",
              imageName: "assets/5.jpg",
              time: "05:15",
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(labelname,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
