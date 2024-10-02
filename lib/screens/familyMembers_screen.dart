import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/list_item.dart';
import 'package:toku_app/models/item.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    Item(
        sound: 'older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nison',
        enName: 'Older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Item(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brohter'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'younger sister'),
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
              Text('F',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.amber.shade200
              ),),
              Text('A',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.green.shade200
              ),),
              Text('M',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent
              ),),
              Text('I',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade200
              ),),
              Text('L',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.amber.shade200
              ),),
              Text('Y',style: TextStyle(
                  fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.green.shade200
              ),),
            ],
          )
      ),
        body: ListView.builder(
      itemCount: familyMembers.length,
      itemBuilder: (context, index) {
        return ListItem(item: familyMembers[index],color: Color(0xffDEE5D4),
        itemType: 'family_members',
        );
      },
    ));


  }
}
