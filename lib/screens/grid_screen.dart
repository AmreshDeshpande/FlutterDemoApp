import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Center(child: Text('Grid')),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: double.infinity,
                  color: Colors.red,
                ),
                Container(
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.lightGreen,
                        ),
                      ],
                    )),
                Container(
                  width: 70.0,
                  height: double.infinity,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ));
  }
}
