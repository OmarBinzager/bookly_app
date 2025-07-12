




import 'package:flutter/material.dart';

abstract class TextStyles {

  static const String gtSectraFineFont = 'GT Sectra Fine';
  
  static const TextStyle semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle bold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle greyMedium16 = TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
  static TextStyle greyMedium18 = TextStyle(
    fontSize: 18,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle medium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}