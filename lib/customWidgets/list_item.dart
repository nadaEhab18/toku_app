
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ListItem extends StatelessWidget {
  final Item item;
  final Color color;
  final String itemType;
  const ListItem({
    Key? key, required this.item, required this.color, required this.itemType, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color:  Color(0xffFEF6DB),
            child: Image.asset(
              item.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName
                  ,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
                Text(
                  item.enName,
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
player.play(item.sound);
         },icon: Icon(Icons.play_arrow,size: 32,color: Colors.white,),
         )
        ],
      ),
    );
  }
}
