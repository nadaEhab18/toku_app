import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

class PhraseItem extends StatelessWidget {
  final Phrase phrase;
  final Color color;
  final String itemType;
  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
    required this.itemType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0,
            spreadRadius: 5.0,
            offset: Offset(
              5.0,
              5.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Color(0xff151943),
                    //blue.shade500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    //(0xff8EACCD),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () async {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                await player.play(phrase.sound);
              } catch (e) {
                print('Error loading sound: $e');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Failed to load sound')),
                );
              }
            },
            icon: Icon(
              Icons.play_arrow,
              size: 32,
              color: Color(0xff8EACCD),
            ),
          )
        ],
      ),
    );
  }
}
