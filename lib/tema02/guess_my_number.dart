import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  Random random = Random();
  int numberToGuess;
  int tries = 0;
  int guessValue;
  String guessMessage = '';
  String buttonMessage = 'Begin';
  String _inputValue = '';
  bool isGameStarted = false;
  Color color;

  @override
  void initState() {
    super.initState();
    _stopGame();
  }

  void _stopGame() {
    isGameStarted = false;
    buttonMessage = 'Begin';
  }

  void _reset() {
    guessMessage = '';
    buttonMessage = 'Guess';
    _inputValue = '';
    isGameStarted = true;
    tries = 0;
    numberToGuess = random.nextInt(100);
  }

  void _showDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('You have guessed the number!'),
        content: Text('And it only took you $tries tries!'),
        actions: <Widget>[
          FlatButton(
            child: const Text('Try again!'),
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _reset();
              });
            },
          ),
          FlatButton(
            child: const Text('Stop the game.'),
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _stopGame();
              });
            },
          ),
        ],
      ),
    );
  }

  void _playerGuess() {
    _controller.clear();
    if (_inputValue.isNotEmpty) {
      guessValue = int.tryParse(_inputValue);
      if (guessValue != null) {
        if (guessValue > numberToGuess) {
          tries++;
          print(tries);
          guessMessage =
              'You tried $guessValue. Try lower!\nHint: The number is $numberToGuess.';
          color = Colors.red;
        } else if (guessValue < numberToGuess) {
          tries++;
          print(tries);
          guessMessage =
              'You tried $guessValue. Try higher!\nHint: The number is $numberToGuess.';
          color = Colors.green;
        } else {
          _showDialog();
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Guess My Number',
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "I'm thinking of a number between 1 and 100",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "It's your turn to guess my number!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(guessMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Try a number!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            controller: _controller,
                            keyboardType: TextInputType.number,
                            readOnly: !isGameStarted,
                            onChanged: (String inputValue) {
                              setState(() {
                                _inputValue = inputValue;
                                print(_inputValue);
                              });
                            },
                          ),
                        ),
                        RaisedButton(
                          child: Text(buttonMessage),
                          onPressed: () {
                            setState(() {
                              if (!isGameStarted)
                                _reset();
                              else
                                _playerGuess();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
