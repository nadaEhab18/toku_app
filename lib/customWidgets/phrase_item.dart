
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

class PhraseItem extends StatelessWidget {
  final Phrase phrase;
  final Color color;
  final String itemType;
  const PhraseItem({
    Key? key, required this.phrase, required this.color, required this.itemType,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
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
                  phrase.jpName
                  ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
              ],
            ),
          ),
          Spacer(),
          IconButton(onPressed: (){
            AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
            player.play(phrase.sound);
          },icon: Icon(Icons.play_arrow,size: 32,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
