import 'package:profile_page_project/colors/appColors.dart';
import 'package:flutter/material.dart';

class AwardCardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AwardCardState();
  }
}

class AwardCardState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        margin: EdgeInsets.only(left: 8.0, top:  16.0, bottom: 16.0, right: 8.0),
        child: new Container(
          padding: EdgeInsets.only(right: 16.0, top:  16.0, bottom: 16.0,),
          height: 150.0,
          width: 280.0,
            child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new RawMaterialButton(
              onPressed: () {},
              child: new Icon(
                Icons.format_list_bulleted,
                color: AppColor.WHITE,
                size: 25.0,
              ),
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: AppColor.DARK_PURPLE,
              padding: const EdgeInsets.all(8.0),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  "Unlimited habit",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                new Container(height: 5.0,),
                new Text(
                  "Create and keep track as \n"
                      "many habits as you wish, \nno limits",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: AppColor.GREY_DAY_TEXT_COLOR),
                ),
              ],
            )
          ],
        )));
  }
}
