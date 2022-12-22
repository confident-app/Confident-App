import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.0, 1.0),
              colors: [
                Color.fromARGB(255, 123, 71, 213),
                Color.fromARGB(255, 159, 238, 249),
                Color.fromARGB(255, 1, 203, 230)
              ],
              tileMode: TileMode.repeated)),
    );
  }
}
