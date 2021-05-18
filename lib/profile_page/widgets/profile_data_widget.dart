import 'package:flutter/material.dart';

class ProfileDataWidget extends StatelessWidget {
  String userName = "";
  String userMail = "";
  String userProfilePhotoPath = "";

  ProfileDataWidget(this.userName, this.userMail, this.userProfilePhotoPath);

  @override
  Widget build(BuildContext context) {
    Container profilePhoto = Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(userProfilePhotoPath),
          )),
    );

    Text userNameText = Text(
      userName,
      style: TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 25),
    );

    Text userMailText = Text(
      userMail,
      style: TextStyle(color: Colors.white38, fontFamily: "Lato", fontSize: 15),
    );

    Container userData = Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [userNameText, userMailText],
      ),
    );

    Row profileData = Row(
      children: [profilePhoto, userData],
    );

    return Container(
        width: MediaQuery.of(context).size.width, child: profileData);
  }
}
