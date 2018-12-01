import 'package:profile_page_project/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProfileCardState();
  }
}

class ProfileCardState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(color: AppColor.WHITE_BLUE),
          padding: EdgeInsets.only(left: 20.0, top: 32.0, bottom: 20.0),
          height: 210.0,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Stack(
                alignment: FractionalOffset.center,
                overflow: Overflow.visible,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/rotatedHexagon2.svg',
                    width: 100.0,
                    height: 120.0,
                    color: AppColor.LIGHT_BLUE,
                  ),
                  SvgPicture.asset(
                    'assets/rotatedHexagon2.svg',
                    width: 90.0,
                    height: 110.0,
                    color: AppColor.LIGHT_PURPLE,
                  ),
                  SvgPicture.asset(
                    'assets/girl.svg',
                    width: 50.0,
                    height: 70.0,
                  )
                ],
              ),
              new Container(
                width: 20.0,
              ),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(height: 22.0,),
                      new Text(
                        "Sondos S.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: AppColor.LIGHT_BLACK),
                      ),
                      new Text(
                        "Your own master",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: AppColor.GREY_DAY_TEXT_COLOR),
                      )
                    ],
                  ),
                  new Container(
                    height: 32.0,
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Icon(
                            Icons.mail_outline,
                            color: AppColor.DARK_PURPLE,
                            size: 20.0,
                          ),
                          new Container(
                            width: 7.0,
                          ),
                          new Text(
                            "Sondos1saadedin@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: AppColor.GREY_DAY_TEXT_COLOR),
                          )
                        ],
                      ),
                      new Container(height: 8.0,),
                      new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Icon(
                            Icons.account_circle,
                            color: Colors.green[400],
                            size: 20.0,
                          ),
                          new Container(
                            width: 7.0,
                          ),
                          new Text(
                            "Free account",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: AppColor.GREY_DAY_TEXT_COLOR),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
