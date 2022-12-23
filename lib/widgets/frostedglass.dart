import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final theChild;
  final double? height;
  final double? width;
  final double valueRadius;
  final double valuePadding;

  const FrostedGlassBox(
    {
      required this.theChild,
      required this.valueRadius,
      required this.valuePadding,
      this.height,
      this.width,
      Key? key,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(valueRadius),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          // color: Colors.black,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.5),
            ]
          )
        ),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3.0,
                sigmaY: 3.0,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white.withOpacity(0.03)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    //begin color  
                    Colors.white.withOpacity(0.05),
                    //end color
                    Colors.white.withOpacity(0.01),
                  ]
                ),
              ),
            ),
            //child ==> the first/top layer of stack
            Container(
              padding: EdgeInsets.all(valuePadding),
              child: theChild,
            ),
          ],
        ),
      ),
    );
  }
}