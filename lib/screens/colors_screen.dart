import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/list_item.dart';
import 'package:toku_app/models/item.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi Kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Burakku',
        enName: 'white'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Shiroi',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('C',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.amber.shade200
                ),),
                Text('O',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.green.shade200
                ),),
                Text('L',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent
                ),),
                Text('O',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.blueAccent.shade200
                ),),
                Text('R',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.amber.shade200
                ),),
                Text('S',style: TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,
                    color: Colors.green.shade200
                ),),
              ],
            )
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: colors[index],
              color: Color(0xffDEE5D4),
              itemType: 'colors',
            );
          },
        ));
  }
}
