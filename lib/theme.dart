import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

// theme을 만들면 전체 앱에 적용됨

ThemeData theme() {
  return ThemeData(
    primarySwatch: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
  );
}