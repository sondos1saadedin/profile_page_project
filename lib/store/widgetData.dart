import 'package:profile_page_project/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:profile_page_project/pages/profilePage.dart';


class Data {
  static Widget body = new ProfilePageWidget();
  static Color backgroundColor = AppColor.WHITE_BLUE;


  final Map<dynamic, dynamic> data = {};
  static Data instance = new Data._();

  Data._();


  set(key, value) => data[key] = value;
  get(key) => data[key];

}
