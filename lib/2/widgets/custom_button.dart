import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  CustomButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SizedBox(
      width: size.width * 0.9,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: tabColor),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
