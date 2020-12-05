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
  final Color firstPlayerColor = Colors.green;
  final Color secondPlayerColor = Colors.red;
  bool firstPlayerTurn = true;
  bool gamePlaying = false;
  final String buttonMessage = 'Play';
  String _winner;
  String _winnerText;
  List<int> board;

  List<Color> boardColors;

  void _reset() {
    setState(() {
      boardColors = <Color>[
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white
      ];
      board = <int>[0, 0, 0, 0, 0, 0, 0, 0, 0];
      gamePlaying = true;
      _winner = '';
      _winnerText = '';
    });
  }

  @override
  void initState() {
    super.initState();
    _reset();
  }

  int _whoWins() {
    bool draw = true;
    List<int> winPos;

    for (int i = 0; i < 9; i += 3) {
      if (board[i] != 0 &&
          (board[i] == board[i + 1] && board[i + 1] == board[i + 2])) {
        winPos = <int>[i, i + 1, i + 2];
        break;
      }
    }

    for (int i = 0; i < 3; i++) {
      if (board[i] != 0 &&
          (board[i] == board[i + 3] && board[i + 3] == board[i + 6])) {
        winPos = <int>[i, i + 3, i + 6];
        break;
      }
    }

    if (board[0] != 0 && (board[0] == board[4] && board[4] == board[8])) {
      winPos = <int>[0, 4, 8];
    }

    if (board[2] != 0 && (board[2] == board[4] && board[4] == board[6])) {
      winPos = <int>[2, 4, 6];
    }

    for (int i = 0; i < 9; i++)
      if (board[i] == 0) {
        draw = false;
      }

    if (draw == true) {
      return 0;
    } else if (winPos != null) {
      for (int i = 0; i < 9; i++) {
        if (!winPos.contains(i)) {
          boardColors[i] = Colors.white;
        }
      }
      return board[winPos[0]];
    } else {
      return -1;
    }
  }

  void _playerAction(int boardPosition) {
    if (board[boardPosition] == 0 && gamePlaying) {
      if (firstPlayerTurn) {
        setState(() {
          board[boardPosition] = 1;
          boardColors[boardPosition] = firstPlayerColor;
        });
      } else {
        setState(() {
          board[boardPosition] = 2;
          boardColors[boardPosition] = secondPlayerColor;
        });
      }
      firstPlayerTurn = !firstPlayerTurn;
    }

    final int winner = _whoWins();
    if (winner != -1 && winner != 0) {
      if (winner == 1)
        _winner = 'Player 1';
      else if (winner == 2) {
        _winner = 'Player 2';
      }
      _winnerText = 'The winner is $_winner';
      gamePlaying = false;
    } else if (winner == 0) {
      _winnerText = 'The game ended in a draw';
      gamePlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tic Tac Toe',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: <Widget>[
          Text(
            _winnerText,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            itemCount: board.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: AnimatedContainer(
                  child: Text('$index'),
                  decoration: BoxDecoration(
                    color: boardColors[index],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  duration: const Duration(milliseconds: 500),
                ),
                onTap: () {
                  _playerAction(index);
                },
              );
            },
          ),
          Visibility(
            visible: !gamePlaying,
            child: RaisedButton(
              child: Text(buttonMessage),
              onPressed: () {
                _reset();
              },
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      backgroundColor: Colors.black,
    );
  }
}
