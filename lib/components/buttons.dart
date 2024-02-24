import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  // final TextStyle textStyle;
  final VoidCallback onPress;
  const MyButton(
      {super.key,
      required this.title,
      this.textColor = Colors.black,
      //    this.textStyle = const TextStyle(color: Colors.black),
      this.color = const Color(0xff333333), //black
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
        ),
      ),
    );
  }
}
