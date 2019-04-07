import 'package:flutter/material.dart';

class BaseView_fr{

  Widget getBaseFR(BuildContext context,String title,List<Widget> children){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:children,
        ),
      ),
    );
  }

}