import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container background = Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF9575cd),
                // Color(0xFF7986cb),
                Color(0xFF7986cb),
              ],
              begin: FractionalOffset(0.2, 0),
              end: FractionalOffset(1, 0.6),
              stops: [0, 0.6],
              tileMode: TileMode.clamp)),
    );

    return Stack(children: [
      background,
    ]);
  }
}
