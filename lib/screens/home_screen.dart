import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/category_item.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/familyMembers_screen.dart';
import 'package:toku_app/screens/number_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NumberScreen();
              }));
            },
            color: Colors.orange,
            text: "Numbers",
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FamilyMembersScreen();
              }));
            },
            color: Colors.green,
            text: "Family Members",
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ColorsScreen();
              }));
            },
            color: Colors.purple,
            text: "Colors",
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return PhrasesScreen();
              }));
            },
            color: Colors.blue,
            text: "Phrases",
          ),
        ],
      ),
    );
  }
}
