import 'package:flutter/material.dart';

class FillButton extends StatelessWidget {
  final bool? isActive;
  final String text;
  final Function() onPressedFB;
  final double? fontSizeOBS;

  const FillButton(
    {
      required this.text,
      required this.onPressedFB,
      this.isActive,
      this.fontSizeOBS,
      Key? key
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: onPressedFB,
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      backgroundColor: const Color.fromARGB(255, 123, 71, 213),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSizeOBS ?? 14,
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
        ),
      ],
    ),
  );  
}