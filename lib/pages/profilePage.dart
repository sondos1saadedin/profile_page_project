import 'package:profile_page_project/bars/bottomBar.dart';
import 'package:profile_page_project/colors/appColors.dart';
import 'package:profile_page_project/widgets/AwardWidget.dart';
import 'package:profile_page_project/widgets/premiumWidget.dart';
import 'package:flutter/material.dart';
import 'package:profile_page_project/cards/profileCard.dart';

class ProfilePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProfilePageState();
  }
}

class ProfilePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child:new ListView(
        children: <Widget>[
       new Column(
        children: <Widget>[
          new ProfileCardWidget(),
          new AwardWidget(),
          new Container(height: 24.0, color: AppColor.WHITE,),
           new PremiumWidget()
        ],
      )],));
  }
}
