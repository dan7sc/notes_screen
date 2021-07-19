import 'package:flutter/material.dart';

class NoteCard extends StatefulWidget {
  NoteCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Map card;

  @override
  NoteCardState createState() => NoteCardState();
}

class NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(widget.card['title']),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              widget.card['icons'] != null ? widget.card['icons'].map((icon) => icon) : Text('ICONS'),
            ],
          ),
          widget.card['text'] != null ? Text(widget.card['text']) : Text('TEXT'),
        ],
      ),
    );
  }
}
