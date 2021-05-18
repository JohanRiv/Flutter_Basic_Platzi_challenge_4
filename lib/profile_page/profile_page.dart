import 'package:flutter/material.dart';
import 'package:platzi_reto_4/profile_page/widgets/header_widget.dart';
import 'package:platzi_reto_4/profile_page/widgets/image_publication_widget.dart';
import 'package:platzi_reto_4/profile_page/widgets/button_bar_widget.dart';
import 'package:platzi_reto_4/profile_page/widgets/profile_data_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text titleLabel = Text(
      "Profile",
      style: TextStyle(
          color: Colors.white,
          fontFamily: "Lato",
          fontSize: 30,
          fontWeight: FontWeight.w900),
    );

    Container settingsButton = Container(
        child: IconButton(
      icon: const Icon(
        Icons.settings,
        color: Colors.white38,
      ),
      iconSize: 15,
      color: Colors.transparent,
      onPressed: () {},
    ));

    Container profileBlock = Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 320,
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
        margin: EdgeInsets.only(top: 0, left: 0, right: 0),
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [titleLabel, settingsButton]),
              ProfileDataWidget("Tyra Smith", "t.smith@bookhappy.com",
                  "assets/images/profile/person_1.jpg"),
              ButtonBarWidget()
            ],
          ),
        ));

    Container userSites = Container(
      margin: EdgeInsets.only(left: 10, top: 290),
      child: Column(
        children: [
          ImagePublicationWidget(
              "assets/images/photos/valencia.jpg",
              "Ciudad de las Artes y la Ciencia",
              "Es un complejo arquitectónico, cultural y de entretenimiento de la ciudad de Valencia (España).",
              "122,324"),
          ImagePublicationWidget(
              "assets/images/photos/murcia.jpg",
              "Catedral de Murcia",
              "Santa Iglesia Catedral de Santa María, ​ conocida como Catedral de Murcia",
              "234,456"),
          ImagePublicationWidget(
              "assets/images/photos/cartagena_spain.jpg",
              "Teatro Romano",
              "Es un teatro de época romana, construido entre los años 5 y 1 a. C. en la ciudad de Carthago Nova, actual Cartagena (España).",
              "344,345"),
        ],
      ),
    );

    Stack profileUserStack = Stack(
      children: [
        HeaderWidget(),
        ListView(
          children: [
            userSites,
          ],
        ),
        profileBlock,
      ],
    );

    return profileUserStack;
  }
}
