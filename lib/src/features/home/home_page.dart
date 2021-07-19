import 'package:flutter/material.dart';
import 'package:levelup5/src/shared/widgets/note_card.dart';

var cards = [
  {
    'title': 'Não esquecer',
    'icons': [
      Icon(Icons.calendar_today),
      Icon(Icons.favorite),
    ],
    'text':
        'Nam euismod tellus id erat. Nam euismod tellus id erat.  Aliquam feugiat tellus ut neque.'
  },
  {
    'title': 'Reunião com os stakeholders',
    'icons': [
      Icon(Icons.favorite),
    ],
    'text':
        'Nam vestibulum accumsan nisl.  Nunc aliquet, augue nec adipiscing interdum, lacus tellus malesuada massa, quis varius mi purus non odio.'
  }
];

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NoteCard(
                    card: cards[0],
                    // title: cards[0]['title'],
                    // icons: cards[0]['icons'],
                    // text: cards[0]['text'],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NoteCard(
                    card: cards[0],
                    // title: cards[1]['title'],
                    // icons: cards[1]['icons'],
                    // text: cards[1]['text'],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
