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
  TextEditingController _controller = TextEditingController();
  final double epsilon = 0.00000001;
  int _numberToCheck;
  String _inputValue;
  String _message;

  void _showDialog() {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(_numberToCheck.toString()),
        content: Text(_message),
      ),
    );
  }

  bool isSquare(int n) {
    double p = pow(n, 1 / 2);
    print(p);
    print(p.toInt());
    return p == p.toInt();
  }

  bool isCube(int n) {
    double p = pow(n, 1 / 3) + epsilon;
    print(p);
    print(p.toInt());
    return double.parse((p).toStringAsFixed(2)) == p.toInt();
  }

  void verifyNumber() {
    _controller.clear();
    if (_inputValue.isNotEmpty) {
      _numberToCheck = int.tryParse(_inputValue);

      bool square = isSquare(_numberToCheck);
      bool cube = isCube(_numberToCheck);

      if (square && cube) {
        _message = 'The number is square and cube.';
      } else if (square) {
        _message = 'The number is square.';
      } else if (cube) {
        _message = 'The number is cube.';
      } else {
        _message = 'The number is neither square, nor cube.';
      }
      _showDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Number shapes',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  onChanged: (String inputValue) {
                    setState(() {
                      _inputValue = inputValue;
                    });
                  }),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            verifyNumber();
          },
          child: Icon(Icons.calculate)),
    );
  }
}
