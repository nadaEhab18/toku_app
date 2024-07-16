import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/phrase_item.dart';
import 'package:toku_app/models/phrase.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<Phrase> phases = const [
    Phrase(
        sound: 'are_you_coming.wav',
        jpName: "Kimasu ka?",
        enName: "Are you coming ?"),
    Phrase(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: "Chan'neru tōroku o wasurenaide",
        enName: "Dont forget to subscribe"),
    Phrase(
        sound: 'how_are_you_feeling.wav',
        jpName: "Go kibun wa ikagadesu ka ?",
        enName: "How are you feeling ?"),
    Phrase(
        sound: 'i_love_anime.wav',
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime "),
    Phrase(
        sound: 'i_love_programming.wav',
        jpName: "Puroguramingu ga daisukidesu",
        enName: "I love programming"),
    Phrase(
        sound: 'programming_is_easy.wav',
        jpName: "puroguramingu wa kantandesu",
        enName: "Programming is easy"),
    Phrase(
        sound: 'what_is_your_name.wav',
        jpName: "Anata no namae wa nandesuka ?",
        enName: "What is your name ?"),
    Phrase(
        sound: 'where_are_you_going.wav',
        jpName: "Doko ni iku no ?",
        enName: "Where are you going ?"),
    Phrase(
        sound: 'yes_im_coming.wav',
        jpName: "Hai, ikimasu",
        enName: "Yes im coming "),
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
          itemCount: phases.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phases[index],
              color: Colors.blue,
              itemType: 'Phases',
            );
          },
        ));
  }
}
