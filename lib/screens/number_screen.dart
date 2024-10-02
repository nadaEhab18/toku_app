import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/list_item.dart';
import 'package:toku_app/models/item.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'ten'),
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
              Text('N',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.amber.shade200
              ),),
              Text('U',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.green.shade200
              ),),
              Text('M',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent
              ),),
              Text('B',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade200
              ),),
              Text('E',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.amber.shade200
              ),),
              Text('R',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.green.shade200
              ),),
              Text('S',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent
              ),),
            ],
          )

         // backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(item: numbers[index],color: Color(0xffDEE5D4),
            itemType: 'numbers',);
          },
        ));
  }
}
