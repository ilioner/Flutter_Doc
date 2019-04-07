import 'package:flutter/material.dart';

class TextTitle{

  static Widget getTitle(String text){
    return new Text(
      text,
      style: new TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    );
  }

  static Widget getSubTitle(String text){
    return new Text(
      text,
      style: new TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
      ),
    );
  }

}