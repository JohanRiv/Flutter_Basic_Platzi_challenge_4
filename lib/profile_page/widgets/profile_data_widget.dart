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
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(userProfilePhotoPath),
          )),
    );

    Text userNameText = Text(
      userName,
      style: TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 17),
    );

    Text userMailText = Text(
      userMail,
      style: TextStyle(color: Colors.black26, fontFamily: "Lato", fontSize: 12),
    );

    Container userData = Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [userNameText, userMailText],
      ),
    );

    Row profileData = Row(
      children: [profilePhoto, userData],
    );

    Column profile = Column(
      children: [
        Text(
          "Profile",
          style:
              TextStyle(color: Colors.white, fontFamily: "Lato", fontSize: 22),
        ),
        profileData
      ],
    );

    return Container(child: profile);
  }
}
