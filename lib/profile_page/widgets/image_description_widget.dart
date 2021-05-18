import 'package:flutter/material.dart';

class ImageDescriptionWidget extends StatelessWidget {
  String siteName = "";
  String siteDescription = "";
  String siteSteps = "";

  ImageDescriptionWidget(this.siteName, this.siteDescription, this.siteSteps);

  @override
  Widget build(BuildContext context) {
    Container siteNameText = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.only(top: 10, bottom: 3),
      child: Text(
        siteName,
        style: TextStyle(
            color: Colors.black,
            fontFamily: "Lato",
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    );

    Container siteDescriptionText = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        siteDescription,
        style: TextStyle(
          color: Colors.black38,
          fontFamily: "Lato",
          fontSize: 12,
        ),
      ),
    );

    Container siteStepsText = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        "Steps " + siteSteps,
        style: TextStyle(
            color: Colors.yellow.shade700,
            fontFamily: "Lato",
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    );

    FloatingActionButton favoriteButton = FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.favorite,
        color: Colors.white,
      ),
      mini: true,
      backgroundColor: Colors.greenAccent.shade400,
    );

    Container description = Container(
        margin: EdgeInsets.only(top: 5, left: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [siteNameText, siteDescriptionText, siteStepsText],
            )
          ],
        ));

    Container cardDescription = Container(
      height: 120,
      width: MediaQuery.of(context).size.width * 0.7,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 20, offset: Offset(0, 7))
          ]),
      child: description,
    );

    Stack stackCardDescription = Stack(
      alignment: Alignment(0.9, 1.2),
      children: [cardDescription, favoriteButton],
    );

    return stackCardDescription;
  }
}
