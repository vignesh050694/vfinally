import 'package:flutter/material.dart';

Image myCard(String charName, String charImageUrl, double width, double height) {
  return Image.asset(
    charImageUrl,
    fit: BoxFit.contain,
    height: height,
    width: width,
  );
}