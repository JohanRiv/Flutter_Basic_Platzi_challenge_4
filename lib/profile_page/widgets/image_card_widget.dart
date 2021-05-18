import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  String imageCardPath = "";

  ImageCardWidget(this.imageCardPath);

  @override
  Widget build(BuildContext context) {
    Container imageCard = Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(imageCardPath)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 20, offset: Offset(0, 7))
          ]),
    );

    return imageCard;
  }
}
