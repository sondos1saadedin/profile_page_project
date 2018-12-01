import 'package:profile_page_project/cards/awardCard.dart';
import 'package:profile_page_project/colors/appColors.dart';
import 'package:flutter/material.dart';


class AwardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AwardState();
  }
}


class AwardState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      color: AppColor.WHITE,
        padding: EdgeInsets.only(top : 10.0, right: 16.0, left: 16.0),
        height: 150.0,
        child: ListView(
            scrollDirection: Axis.horizontal, children: <Widget>[
              new AwardCardWidget(),
              new AwardCardWidget()
        ]));
  }

}
