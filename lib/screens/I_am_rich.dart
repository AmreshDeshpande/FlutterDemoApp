import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  static String id = "i_am_rich";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("I am Rich")),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[500],
      body: Center(
        child: Image(
          image: AssetImage('images/diamond_large.png'),
//              image: NetworkImage(
//                  'https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ),
      ),
    );
  }
}
