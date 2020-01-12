import 'package:flutter/material.dart';
import 'package:i_am_rich/screens/I_am_rich.dart';
import 'package:i_am_rich/screens/bmi_form_page.dart';
import 'package:i_am_rich/screens/chat/welcome_screen.dart';
import 'package:i_am_rich/screens/crypto_market.dart';
import 'package:i_am_rich/screens/dice_screen.dart';
import 'package:i_am_rich/screens/grid_screen.dart';
import 'package:i_am_rich/screens/profile_screen.dart';
import 'package:i_am_rich/screens/quiz.dart';
import 'package:i_am_rich/screens/todolist/TaskData.dart';
import 'package:i_am_rich/screens/todolist/TasksScreen.dart';
import 'package:i_am_rich/screens/weather_page.dart';
import 'package:i_am_rich/screens/xylophone.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: MaterialApp(
          theme: ThemeData.dark().copyWith(
              primaryColor: Color(0xFF0A0E21),
              scaffoldBackgroundColor: Color(0xFF0A0E21),
              accentColor: Colors.purple),
          home: NavigationDrawer(),
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IAmRich(),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Flutter Demo App',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('I am Rich'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IAmRich();
                }));
              },
            ),
            ListTile(
              title: Text('Grid'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GridScreen();
                }));
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
            ),
            ListTile(
              title: Text('Dice Game'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DiceGame();
                }));
              },
            ),
            ListTile(
              title: Text('Xylophone'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Xylophone();
                }));
              },
            ),
            ListTile(
              title: Text('Quiz'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Quiz();
                }));
              },
            ),
            ListTile(
              title: Text('BMI calculator'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BMIFormPage();
                }));
              },
            ),
            ListTile(
              title: Text('Crypto Coin App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CryptoScreen();
                }));
              },
            ),
            ListTile(
              title: Text('Weather App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WeatherPage();
                }));
              },
            ),
            ListTile(
              title: Text('Chat App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WelcomeScreen();
                }));
              },
            ),
            ListTile(
              title: Text('Todo List App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TasksScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
