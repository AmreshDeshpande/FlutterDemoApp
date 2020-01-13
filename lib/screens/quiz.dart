import 'package:flutter/material.dart';
import 'package:i_am_rich/models/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> scoreKeeper = [];

  bool checkAnswer(bool selectedAnswer) {
    bool correctAnswer = quizBrain.getAnswer();
    return selectedAnswer == correctAnswer;
  }

  bool onAnswerSelection(bool selectedAnswer) {
    bool hasNextQuestion = quizBrain.nextQuestion();
    setState(() {
      bool correct = checkAnswer(selectedAnswer);

      if (hasNextQuestion) {
        if (correct) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.clear,
            color: Colors.red,
          ));
        }
      }
    });
    return hasNextQuestion;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                quizBrain.getQuestion(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Text('True'),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    if (!onAnswerSelection(true)) {
                      _showMaterialDialog(context);
                      scoreKeeper.clear();
                    }
                  });
                },
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                child: Text('False'),
                color: Colors.red,
                onPressed: () {
                  if (!onAnswerSelection(true)) {
                    _showMaterialDialog(context);
                    scoreKeeper.clear();
                  }
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: scoreKeeper,
            ),
          ),
        ],
      ),
    );
  }

  void _showMaterialDialog(BuildContext context) {
    print('Inside _showMaterialDialog');
    //final context = navigatorKey.currentState.overlay.context;
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('End of Quiz'),
            content: Text('Quiz has finished.'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    _dismissDialog(context);
                  },
                  child: Text('Close')),
            ],
          );
        });
  }

  _dismissDialog(BuildContext context) {
    Navigator.pop(context);
  }
}
