
import 'package:profile_page_project/pages/profilePage.dart';
import 'package:profile_page_project/store/widgetData.dart';
import 'package:flutter/material.dart';
import 'package:profile_page_project/colors/appColors.dart';
import 'dart:ui' as ui;
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:profile_page_project/store/reduxStore.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BottomBarState();
  }
}

class _BottomBarState extends State<StatefulWidget> {
  Data global = Data.instance;
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new BottomAppBar(
      elevation: 5.0,
      child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  Offset(4.0, 24.0),
                  Offset(24.0, 4.0),
                  (selected == 1)
                      ? [
                          AppColor.PINK,
                          AppColor.LIGHT_PINK,
                        ]
                      : [AppColor.LIGHTER_PURPLE,AppColor.LIGHTER_PURPLE],
                );
              },
              child: StoreConnector<AppState, VoidCallback>(
                converter: (store) {
                  Map map = new Map();
                  map["action"] = Actions.changeBodyWidget;
                  map["widget"] = ReduxStore.list[0];
                  map["backgroundColor"] = AppColor.WHITE_BLUE;
                  return () => store.dispatch(map);
                },
                builder: (context, callback) => new IconButton(
                    icon: Icon(
                      Icons.work,
                      size: 25.0,
                    ),
                    onPressed: () {
                      callback();
                      setState(() {
                        selected = 1;
                      });
                    }),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  Offset(4.0, 24.0),
                  Offset(24.0, 4.0),
                  (selected == 2)
                      ? [
                          AppColor.PINK,
                          AppColor.LIGHT_PINK,
                        ]
                      : [AppColor.LIGHTER_PURPLE,AppColor.LIGHTER_PURPLE],
                );
              },
              child: StoreConnector<AppState, VoidCallback>(
                  converter: (store) {
                    Map map = new Map();
                    map["action"] = Actions.changeBodyWidget;
                    map["widget"] = ReduxStore.list[3];
                    map["backgroundColor"] = AppColor.LOGIN_PAGE_BACKGROUND_COLOR;
                    return () => store.dispatch(map);
                  },
                  builder: (context, callback) => new IconButton(
                      icon: Icon(
                        Icons.shopping_basket,
                        size: 25.0,
                      ),
                      onPressed: () {
                        callback();
                        setState(() {
                          selected = 2;
                        });
                      })),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  Offset(4.0, 24.0),
                  Offset(24.0, 4.0),
                  (selected == 3)
                      ? [
                          AppColor.PINK,
                          AppColor.LIGHT_PINK,
                        ]
                      : [AppColor.LIGHTER_PURPLE,AppColor.LIGHTER_PURPLE],
                );
              },
              child: StoreConnector<AppState, VoidCallback>(
                converter: (store) {
                  Map map = new Map();
                  map["action"] = Actions.changeBodyWidget;
                  map["widget"] = ReduxStore.list[2];
                  map["backgroundColor"] = AppColor.LOGIN_PAGE_BACKGROUND_COLOR;
                  return () => store.dispatch(map);
                },
                builder: (context, callback) => new IconButton(
                    icon: Icon(
                      Icons.today,
                      size: 25.0,
                    ),
                    onPressed: () {
                      callback();
                      setState(() {
                        selected = 3;
                      });
                    }),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  Offset(4.0, 24.0),
                  Offset(24.0, 4.0),
                  (selected == 4)
                      ? [
                          AppColor.PINK,
                          AppColor.LIGHT_PINK,
                        ]
                      : [AppColor.LIGHTER_PURPLE,AppColor.LIGHTER_PURPLE],
                );
              },
              child: StoreConnector<AppState, VoidCallback>(
                converter: (store) {
                  Map map = new Map();
                  map["action"] = Actions.changeBodyWidget;
                  map["widget"] = ReduxStore.list[1];
                  map["backgroundColor"] = AppColor.WHITE_BLUE;

                  return () => store.dispatch(map);
                },
                builder: (context, callback) => new IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 25.0,
                    ),
                    onPressed:() {
                      callback();
                      setState(() {
                        selected = 4;
                      });
                    }),
              ),
            ),
          ]),
    );
  }
}
