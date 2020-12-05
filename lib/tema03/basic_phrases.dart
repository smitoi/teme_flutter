import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';

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

class Phrase {
  Phrase(this.phrase, this.url);

  final String phrase;
  final String url;
}

class _HomePageState extends State<HomePage> {
  final AudioPlayer audioPlugin = AudioPlayer();
  final List<Phrase> phrases = <Phrase>[
    Phrase('Hello.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Hello&tl=en&total=1&idx=0&textlen=5'),
    Phrase('Hallo.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Hallo&tl=de&total=1&idx=0&textlen=5'),
    Phrase('How are you?',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=How%20are%20you%3F&tl=en&total=1&idx=0&textlen=12'),
    Phrase('Wie geht es dir?',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Wie%20geht%20es%20dir%3F&tl=de&total=1&idx=0&textlen=16'),
    Phrase("I'm good thank you",
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=i%27m%20good%20thank%20you&tl=en&total=1&idx=0&textlen=18'),
    Phrase('Mir geht es gut, danke',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=mir%20geht%20es%20gut%2C%20danke&tl=de&total=1&idx=0&textlen=22'),
    Phrase('This is a Flutter demo.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=This%20is%20a%20Flutter%20demo.&tl=en&total=1&idx=0&textlen=23'),
    Phrase('Dies ist eine Flutter-Demo.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Dies%20ist%20eine%20Flutter-Demo.&tl=de&total=1&idx=0&textlen=27'),
    Phrase('Generic robot voice.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Generic%20robot%20voice.&tl=en&total=1&idx=0&textlen=20'),
    Phrase('Generische Roboterstimme.',
        'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&q=Generische%20Roboterstimme.&tl=de&total=1&idx=0&textlen=25')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic phrases'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 30, 16, 20),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: phrases.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Ink(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(phrases[index].phrase,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                        )),
                  ]),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[
                      Color.fromARGB(255, 183, 148, 146),
                      Color.fromARGB(255, 145, 124, 120)
                    ]),
              ),
            ),
            onTap: () {
              setState(() {
                if (audioPlugin.state == AudioPlayerState.PLAYING) {
                  audioPlugin.stop();
                }
                audioPlugin.play(phrases[index].url);
              });
            },
          );
        },
      ),
    );
  }
}
