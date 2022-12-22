import 'package:flutter/material.dart';

class OutlineButtonSelect extends StatelessWidget {
  final bool? isActive;
  final String text;
  final Function() onPressedOBS;
  final double? fontSizeOBS;

  const OutlineButtonSelect(
    {
      required this.text,
      required this.onPressedOBS,
      this.isActive,
      this.fontSizeOBS,
      Key? key
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlinedButton(
    onPressed: onPressedOBS,
    style: OutlinedButton.styleFrom(
      primary: isActive == true ? Colors.white : Colors.transparent,
      backgroundColor: isActive == true ? Colors.black : Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          return const BorderSide(
            color: Colors.black,
            width: 1.2,
          ); // Defer to the widget's default.
        }
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
            color: isActive == true ? Colors.white : Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
      ],
    ),
  );  
}