import 'package:flutter/material.dart';
import 'package:login_server/features/presentations/constants/colors.dart';

class MyTextStyle{
  static const TextStyle primaryFont = TextStyle(
    fontFamily: 'OpenSans',
  );

  static const TextStyle headlinePrimary = TextStyle(
    fontFamily: 'ProximaNova',
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: colorTextPrimary
    
  );

  static const TextStyle headlineSecondary = TextStyle(
    fontFamily: 'ProximaNova',
    fontSize: 15,
    color: colorTextSecondary
    
  );
}