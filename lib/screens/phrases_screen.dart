import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/phrase_item.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<Phrase> colors = const [
    Phrase(sound: 'are_you_coming.wav', jpName: "jpName", enName: "Are you coming ?"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return PhraseItem(phrase: colors[index],color: Colors.blue,
              itemType: 'colors',
            );
          },
        ));
  }
}
