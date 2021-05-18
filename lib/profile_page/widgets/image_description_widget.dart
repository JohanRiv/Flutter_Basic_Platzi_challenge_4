import 'package:flutter/material.dart';

class ImageDescriptionWidget extends StatelessWidget {
  String siteName = "";
  String siteDescription = "";
  String siteSteps = "";

  ImageDescriptionWidget(this.siteName, this.siteDescription, this.siteSteps);

  @override
  Widget build(BuildContext context) {
    Container siteNameText = Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.only(top: 10, bottom: 10),
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
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        siteName,
        style: TextStyle(
          color: Colors.black38,
          fontFamily: "Lato",
          fontSize: 12,
        ),
      ),
    );

    Container siteStepsText = Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        "Steps " + siteName,
        style: TextStyle(
            color: Colors.yellowAccent.shade400,
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
      backgroundColor: Colors.green,
    );

    Container description = Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [siteNameText, siteDescriptionText, siteStepsText],
        ));

    Container cardDescription = Container(
      alignment: Alignment.center,
      color: Colors.white,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 20, offset: Offset(0, 7))
          ]),
      child: description,
    );

    Stack stackCardDescription = Stack(
      alignment: Alignment(0.9, 1.1),
      children: [cardDescription, favoriteButton],
    );

    return stackCardDescription;
  }
}
