import 'package:profile_page_project/colors/appColors.dart';
import 'package:flutter/material.dart';

class PremiumWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PremiumState();
  }
}

class PremiumState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: AppColor.WHITE_BLUE,
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, -20.0),
                child: new RaisedButton(
                  onPressed: () {},
                  elevation: 7.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  padding: EdgeInsets.only(
                      top: 12.0, bottom: 12.0, right: 40.0, left: 40.0),
                  color: AppColor.LIGHT_PURPLE,
                  child: new Text(
                    "Upgrade Premium",
                    style: TextStyle(
                        color: AppColor.WHITE,
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0),
                  ),
                ),
              ),
            ],
          ),
          new Text(
            "I have a premium account!",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
                color: AppColor.GREY_DAY_TEXT_COLOR),
          ),
          Container(
              padding: EdgeInsets.all(16.0),
              height: 120.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  createHelpingCards(Icons.feedback, "Feedback"),
                  createHelpingCards(Icons.star_border, "Rate us"),
                  createHelpingCards(Icons.featured_play_list, "License")
                ],
              ))
        ],
      ),
    );
  }

  Widget createHelpingCards(IconData icon, String text) {
    return new Card(
      color: AppColor.WHITE,
      elevation: 1.0,
      child: new Container(
        width: 100.0,
        height: 70.0,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              icon,
              color: AppColor.LIGHT_BLUE,
              size: 25.0,
            ),
            new Container(
              height: 10.0,
            ),
            new Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  color: AppColor.GREY_DAY_TEXT_COLOR),
            ),
          ],
        ),
      ),
    );
  }
}
