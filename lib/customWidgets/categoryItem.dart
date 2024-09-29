
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  const CategoryItem({Key? key, required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFF5CD),
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
      height: 180,
      width: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl,height: 80,width: 80,),
          SizedBox(height: 10,)
          ,Text(
            title,
            style: TextStyle(fontSize: 20, color: Color(0xff151943),fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
