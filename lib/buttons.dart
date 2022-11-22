import 'package:flutter/material.dart';

class CButtons extends StatelessWidget {
  final Color color, textColor;
  final String buttonText;
  final Function() ontap;
  const CButtons(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonText,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.purpleAccent,
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
