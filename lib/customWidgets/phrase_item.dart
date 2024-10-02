import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

class PhraseItem extends StatefulWidget {
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
  State<PhraseItem> createState() => _PhraseItemState();
}

class _PhraseItemState extends State<PhraseItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
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
      height: 120,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all( 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.phrase.jpName,
                  style: TextStyle(
                    color: Color(0xff151943),
                    fontSize: 18,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/audio.png',
                      height: 50,
                      width: MediaQuery.of(context).size.width - 80,
                      fit: BoxFit.fill,
                      color: isPressed ? Color(0xff8EACCD) : Colors.grey.shade500,
                    ),
                    IconButton(
                      onPressed: () async {
                          AudioCache player =
                          AudioCache(prefix: 'assets/sounds/${widget.itemType}/');
                          await player.play(widget.phrase.sound);
                          setState(() {
                            isPressed = true;
                          });

                      },
                      icon: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff8EACCD)),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      ),

                  ],
                ),

                Text(
                  widget.phrase.enName,
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    //(0xff8EACCD),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
