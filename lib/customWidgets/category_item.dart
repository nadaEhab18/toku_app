
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final  Function()? onTap ;

  const Category({
    Key? key, required this.text, required this.color,
     this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 65,
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(text
            ,style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),),
        ),
      ),
    );
  }
}
