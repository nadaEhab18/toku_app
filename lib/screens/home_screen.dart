import 'package:flutter/material.dart';
import 'package:toku_app/customWidgets/categoryItem.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/familyMembers_screen.dart';
import 'package:toku_app/screens/number_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku App',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NumberScreen();
                    }));
                  },
                  child: CategoryItem(
                      imageUrl: 'assets/images/numbers.png', title: 'Numbers')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ColorsScreen();
                    }));
                  },
                  child: CategoryItem(
                      imageUrl: 'assets/images/colors.png', title: 'Colors')),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FamilyMembersScreen();
                    }));
                  },
                  child: CategoryItem(
                      imageUrl: 'assets/images/family.png', title: 'Family')),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PhrasesScreen();
                    }));
                  },
                  child: CategoryItem(
                      imageUrl: 'assets/images/phrases.png', title: 'Phrases')),
            ],
          ),
        ],
      ),
    );
  }
}
