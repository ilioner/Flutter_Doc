import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class CustomSingleChildLayout_view extends StatefulWidget {
  @override
  _CustomSingleChildLayout_viewState createState() => new _CustomSingleChildLayout_viewState();
}

class _CustomSingleChildLayout_viewState extends State<CustomSingleChildLayout_view> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CustomSingleChildLayout"),
        leading: IconButton(icon: new Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(5.0),
        child: CustomSingleChildLayout(
          delegate: FixedSizeLayoutDelegate(Size(200.0, 200.0)),
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 300.0,
          ),
        ),
      )
    );
  }
}


class FixedSizeLayoutDelegate extends SingleChildLayoutDelegate {
  FixedSizeLayoutDelegate(this.size);

  final Size size;

  @override
  Size getSize(BoxConstraints constraints) => size;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return new BoxConstraints.tight(size);
  }

  @override
  bool shouldRelayout(FixedSizeLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}

