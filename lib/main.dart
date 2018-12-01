import 'package:profile_page_project/cards/profileCard.dart';
import 'package:profile_page_project/colors/appColors.dart';
import 'package:profile_page_project/pages/profilePage.dart';
import 'package:profile_page_project/store/widgetData.dart';
import 'package:flutter/material.dart';
import 'package:profile_page_project/bars/bottomBar.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:profile_page_project/store/reduxStore.dart';
import 'dart:ui' as ui;

void main() {
  runApp(
    new MainWidget(),
  );
}

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainState();
  }
}

class MainState extends State<StatefulWidget> {
  final store = new Store(reducer,
      initialState: new AppState(new ProfilePageWidget(), AppColor.WHITE_BLUE));

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreProvider<AppState>(
      store: store,
      child: StoreConnector<AppState, Widget>(
        converter: (store) => store.state.body,
        builder: (context, newBody) => new MaterialApp(
          home: buildHomePage()
        ),
      ),
    );
  }

  Widget buildHomePage() {
    return new Scaffold(
        backgroundColor: AppColor.WHITE_BLUE,
        body: new ProfilePageWidget(),
        bottomNavigationBar: BottomBarWidget());
  }
}
