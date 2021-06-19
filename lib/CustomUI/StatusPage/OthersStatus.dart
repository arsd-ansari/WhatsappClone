import 'package:flutter/material.dart';

class OthersStatus extends StatelessWidget {
  const OthersStatus({Key? key, this.name, this.imageName, this.time})
      : super(key: key);
  final String? name;
  final String? time;
  final String? imageName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: AssetImage(imageName!),
      ),
      title: Text(
        name!,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Today at, $time",
        style: TextStyle(fontSize: 14, color: Colors.grey[900]),
      ),
    );
  }
}
