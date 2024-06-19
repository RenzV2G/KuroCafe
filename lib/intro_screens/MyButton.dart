import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color backgroundColor;
  final Color textColor;

  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: textColor, fontFamily: 'Bright', fontSize: 35),
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(
              Icons.arrow_forward,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
