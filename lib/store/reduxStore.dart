import 'package:profile_page_project/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ReduxStore {
  static var list = [new ProfilePageWidget(), new ProfilePageWidget(), new ProfilePageWidget(), new ProfilePageWidget()];
}

enum Actions {
  changeBodyWidget,
}

@immutable
class AppState {
  Widget body;
  Color backgroundColor;
  AppState(this.body, this.backgroundColor);
}

AppState reducer(AppState prev, action) {
  if (action["action"] == Actions.changeBodyWidget) {
    return new AppState(action["widget"], action["backgroundColor"]);
  }

}
