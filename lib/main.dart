import 'package:flutter/material.dart';
import 'package:i_am_rich/models/quiz_brain.dart';
import 'package:i_am_rich/screens/crypto_market.dart';
import 'package:i_am_rich/screens/todolist/TaskData.dart';
import 'package:i_am_rich/screens/todolist/TasksScreen.dart';
import 'package:provider/provider.dart';

QuizBrain quizBrain = QuizBrain();

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
        home: TasksScreen(),
      ),
    );
  }
}


//      MaterialApp(
//        home: Scaffold(
//          appBar: AppBar(
//            title: Center(child: Text("I am Rich")),
//            backgroundColor: Colors.blueGrey[900],
//          ),
//          backgroundColor: Colors.blueGrey[500],
//          body: Center(
//            child: Image(
//              image: AssetImage('images/diamond_large.png'),
////              image: NetworkImage(
////                  'https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
//            ),
//          ),
//        ),
//      ),
//);

//class GridWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        home: SafeA
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          Container(
//            width: 70.0,
//            height: double.infinity,
//            color: Colors.red,
//          ),
//          Container(
//              height: double.infinity,
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Container(
//                    width: 100.0,
//                    height: 100.0,
//                    color: Colors.yellowAccent,
//                  ),
//                  Container(
//                    width: 100.0,
//                    height: 100.0,
//                    color: Colors.lightGreen,
//                  ),
//                ],
//              )),
//          Container(
//            width: 70.0,
//            height: double.infinity,
//            color: Colors.blue,
//          ),
//        ],
//      ),
//    ));
//  }
//}

//class Profile extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        home: Scaffold(
//      backgroundColor: Colors.teal,
//      body: SafeArea(
//          child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          CircleAvatar(
//            radius: 60,
//            backgroundImage: AssetImage('images/amresh.jpg'),
//          ),
//          Text('Amresh Deshpande',
//              style: TextStyle(
//                  fontFamily: 'Pacifico',
//                  color: Colors.white,
//                  fontSize: 35.0,
//                  fontWeight: FontWeight.bold)),
//          Text('MOBILE ARCHITECT',
//              style: TextStyle(
//                  fontFamily: 'SourceSansPro',
//                  color: Colors.teal[200],
//                  fontSize: 20.0,
//                  letterSpacing: 2.5,
//                  fontWeight: FontWeight.bold)),
//          SizedBox(
//            height: 30.0,
//            width: 150,
//            child: Divider(
//              color: Colors.teal[100],
//            ),
//          ),
//          Card(
//              color: Colors.white,
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              child: ListTile(
//                leading: Icon(
//                  Icons.phone,
//                  color: Colors.teal.shade900,
//                ),
//                title: Text(
//                  '+91 8975629999',
//                  style: TextStyle(color: Colors.teal),
//                ),
//              )),
//          Card(
//              color: Colors.white,
//              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//              child: ListTile(
//                leading: Icon(
//                  Icons.email,
//                  color: Colors.teal.shade900,
//                ),
//                title: Text(
//                  'amr.deshpande@gmail.com',
//                  style: TextStyle(color: Colors.teal),
//                ),
//              ))
//        ],
//      )),
//    ));
//  }
//}

//class DiceGame extends StatefulWidget {
//  @override
//  _DiceGameState createState() => _DiceGameState();
//}
//
//class _DiceGameState extends State<DiceGame> {
//  int leftDiceNumber = 1;
//  int rightDiceNumber = 1;
//
//  void changeDiceFace() {
//    setState(() {
//      leftDiceNumber = Random().nextInt(6) + 1;
//      rightDiceNumber = Random().nextInt(6) + 1;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.red,
//        appBar: AppBar(
//          title: Center(child: Text('Dicee')),
//          backgroundColor: Colors.red,
//        ),
//        body: Center(
//          child: Row(
//            children: <Widget>[
//              Expanded(
//                child: FlatButton(
//                  child: Image.asset('images/dice$leftDiceNumber.png'),
//                  onPressed: () {
//                    changeDiceFace();
//                  },
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  child: Image.asset('images/dice$rightDiceNumber.png'),
//                  onPressed: () {
//                    setState(() {
//                      changeDiceFace();
//                    });
//                  },
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//class Xylophone extends StatelessWidget {
//  void playSound(int soundNumber) {
//    var player = AudioCache();
//    player.play('note$soundNumber.wav');
//  }
//
//  Expanded buildKey(MaterialColor color, int soundNumber) {
//    return Expanded(
//      child: FlatButton(
//        color: color,
//        onPressed: () {
//          playSound(soundNumber);
//        },
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.black,
//        body: SafeArea(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              buildKey(Colors.red, 1),
//              buildKey(Colors.orange, 2),
//              buildKey(Colors.yellow, 3),
//              buildKey(Colors.green, 4),
//              buildKey(Colors.teal, 5),
//              buildKey(Colors.blue, 6),
//              buildKey(Colors.purple, 7),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//class Quiz extends StatefulWidget {
//  @override
//  _QuizState createState() => _QuizState();
//}
//
//class _QuizState extends State<Quiz> {
//  List<Icon> scoreKeeper = [];
//  bool checkAnswer(bool selectedAnswer) {
//    bool correctAnswer = quizBrain.getAnswer();
//    return selectedAnswer == correctAnswer;
//  }
//
//  bool onAnswerSelection(bool selectedAnswer) {
//    bool hasNextQuestion = quizBrain.nextQuestion();
//    setState(() {
//      bool correct = checkAnswer(selectedAnswer);
//
//      if (hasNextQuestion) {
//        if (correct) {
//          scoreKeeper.add(Icon(
//            Icons.check,
//            color: Colors.green,
//          ));
//        } else {
//          scoreKeeper.add(Icon(
//            Icons.clear,
//            color: Colors.red,
//          ));
//        }
//      }
//    });
//    return hasNextQuestion;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      appBar: AppBar(
//        title: Center(child: Text('Quiz')),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
//        children: <Widget>[
//          Expanded(
//            flex: 8,
//            child: Center(
//              child: Text(
//                quizBrain.getQuestion(),
//                style: TextStyle(color: Colors.white),
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 3,
//            child: Padding(
//              padding: const EdgeInsets.all(20.0),
//              child: FlatButton(
//                child: Text('True'),
//                color: Colors.green,
//                onPressed: () {
//                  setState(() {
//                    if (!onAnswerSelection(true)) {
//                      _showMaterialDialog(context);
//                      scoreKeeper.clear();
//                    }
//                  });
//                },
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 3,
//            child: Padding(
//              padding: const EdgeInsets.all(20.0),
//              child: FlatButton(
//                child: Text('False'),
//                color: Colors.red,
//                onPressed: () {
//                  if (!onAnswerSelection(true)) {
//                    _showMaterialDialog(context);
//                    scoreKeeper.clear();
//                  }
//                },
//              ),
//            ),
//          ),
//          Expanded(
//            child: Row(
//              children: scoreKeeper,
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  void _showMaterialDialog(BuildContext context) {
//    print('Inside _showMaterialDialog');
//    //final context = navigatorKey.currentState.overlay.context;
//    showDialog(
//        context: context,
//        builder: (context) {
//          return AlertDialog(
//            title: Text('End of Quiz'),
//            content: Text('Quiz has finished.'),
//            actions: <Widget>[
//              FlatButton(
//                  onPressed: () {
//                    _dismissDialog(context);
//                  },
//                  child: Text('Close')),
//            ],
//          );
//        });
//  }
//
//  _dismissDialog(BuildContext context) {
//    Navigator.pop(context);
//  }
//}
