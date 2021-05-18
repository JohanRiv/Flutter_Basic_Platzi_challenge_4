import 'package:flutter/material.dart';

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container tagButton = Container(
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.bookmark_outline,
            color: Colors.transparent,
          ),
          color: Colors.white70,
          onPressed: () {},
        ));

    Container cardButton = Container(
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.card_giftcard,
            color: Colors.transparent,
          ),
          color: Colors.white38,
          onPressed: () {},
        ));

    Container addButton = Container(
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.add,
            color: Colors.transparent,
          ),
          color: Colors.white,
          iconSize: 34,
          onPressed: () {},
        ));

    Container messageButton = Container(
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.mail_outline,
            color: Colors.transparent,
          ),
          color: Colors.white38,
          onPressed: () {},
        ));

    Container personButton = Container(
        margin: EdgeInsets.only(right: 20),
        child: IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.transparent,
          ),
          color: Colors.white38,
          onPressed: () {},
        ));

    Container buttonBar = Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        children: [
          tagButton,
          cardButton,
          addButton,
          messageButton,
          personButton,
        ],
      ),
    );

    return buttonBar;
  }
}
