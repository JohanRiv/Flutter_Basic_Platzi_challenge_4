import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text titleLabel = Text(
      "Profile",
      style: TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 30),
    );

    Container settingsButton = Container(
        alignment: Alignment(0.9, -0.6),
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white38,
          ),
          iconSize: 12,
          color: Colors.transparent,
          onPressed: () {},
        ));

    Container background = Container(
      height: 450,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF9575cd),
                Color(0xFF7986cb),
              ],
              begin: FractionalOffset(0.2, 0),
              end: FractionalOffset(1, 0.6),
              stops: [0, 0.6],
              tileMode: TileMode.clamp)),
      child: titleLabel,
      alignment: Alignment(-0.9, -0.6),
    );

    return Stack(children: [background, settingsButton]);
  }
}
