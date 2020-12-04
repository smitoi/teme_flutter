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
  // https://api.exchangeratesapi.io/latest?base=USD&symbols=EUR - in case I ever get bored and try to use an API
  String  valueToConvert;
  String  showValue = '';
  String  error;
  String  currencyToConvert = ' RON';
  double  conversionRate = 4.8732;
  double  currentFontSize = 40;
  double  convertedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          centerTitle: true,
          title: const Text (
            'Currency Converter',
          ),
        ),
        body: Padding (
            padding: const EdgeInsets.fromLTRB(64, 32, 64, 32),
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Column ( // Tried to play with the layout
                  children: <Widget> [
                    const Text (
                      'Convert to:',
                      style: TextStyle (
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                      ),
                    ),
                    ListTile (
                      title: const Text('RON'),
                      leading: Radio<double>(
                        groupValue: conversionRate,
                        value: 4.8732,
                        onChanged: (double value) {
                          setState(() {
                            conversionRate = 4.8732;
                            currencyToConvert = ' RON';
                          });
                        },
                      ),
                    ),
                    ListTile (
                      title: const Text('USD'),
                      leading: Radio<double>(
                        groupValue: conversionRate,
                        value: 1.1832,
                        onChanged: (double value) {
                          setState(() {
                            conversionRate = 1.1832;
                            currencyToConvert = ' USD';
                          });
                        },
                      ),
                    ),
                  ],
                ),
                TextField (
                  decoration: InputDecoration (
                    hintText: 'Enter the value in EUR',
                    suffixText: 'EUR',
                    errorText: error,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String inputValue) {
                    setState (() {
                      valueToConvert = inputValue;
                    });
                  },
                ),
                RaisedButton (
                  child: const Text('Convert'),
                  onPressed: () {
                    setState(() {
                      if (valueToConvert.isNotEmpty) {
                        convertedValue = double.tryParse(valueToConvert);
                        if (convertedValue != null && convertedValue >= 0) {
                          convertedValue *= conversionRate;
                          showValue = convertedValue.toStringAsFixed(2) + currencyToConvert;
                          currentFontSize = max(52.0 - convertedValue.toStringAsFixed(0).length * 2.7, 18); // Applied a custom size to make it more beautiful
                          error = null;
                        }
                        else {
                          showValue = '';
                          error = 'Please enter a VALID number';
                        }
                      }
                      else {
                        showValue = '';
                        error = 'Please enter a number';
                      }
                    });
                  },
                ),
                Text (
                  showValue,
                  style: TextStyle (
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: currentFontSize,
                  ),
                ),
                Image.network (
                  'https://i.pinimg.com/originals/fb/76/27/fb76278415ce6724ddab2e373e8b3f2d.png',
                  height: 250,
                  width: 250,
                ),
              ],
            )
        )
    );
  }
}