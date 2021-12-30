import 'package:flutter/material.dart';
import './tsx.dart';
import './content.dart';
class Packet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 247, 250, 1),
        elevation: 0.5,
        title: Text(
          "Packages",
          style: TextStyle(color: Color.fromRGBO(25, 22, 96, 1)),
        ),
      ),
      body: PacketContent()
    );
  }
}
