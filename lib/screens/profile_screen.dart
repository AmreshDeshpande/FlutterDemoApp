import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/amresh.jpg'),
          ),
          Text('Amresh Deshpande',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold)),
          Text('MOBILE ARCHITECT',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal[200],
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30.0,
            width: 150,
            child: Divider(
              color: Colors.teal[100],
            ),
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  '+91 8975629999',
                  style: TextStyle(color: Colors.teal),
                ),
              )),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'amr.deshpande@gmail.com',
                  style: TextStyle(color: Colors.teal),
                ),
              ))
        ],
      )),
    ));
  }
}