import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class SizedOverflowBox_view extends StatefulWidget {
  @override
  _SizedOverflowBox_viewState createState() => new _SizedOverflowBox_viewState();
}

class _SizedOverflowBox_viewState extends State<SizedOverflowBox_view> {
  @override
  Widget build(BuildContext context) {
    return BaseView_fr().getBaseFR(context, "SizedOverflowBox", <Widget>[
      Text("SizedOverflowBox是SizedBox与OverflowBox的结合体。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("1.尺寸部分。通过将自身的固定尺寸，传递给child，来达到控制child尺寸的目的；"),
      Text("2.超出部分。可以突破父节点尺寸的限制，超出部分也可以被渲染显示，与OverflowBox类似。"),
      TextTitle.getSubTitle("示例代码:"),
      Container(
        color: Colors.green,
        alignment: Alignment.topRight,
        width: 200.0,
        height: 200.0,
        padding: EdgeInsets.all(5.0),
        child: SizedOverflowBox(
          size: Size(100.0, 200.0),
          child: Container(color: Colors.red, width: 200.0, height: 100.0,),
        ),
      ),
      MarkdownBody(data: """
      Container(
        color: Colors.green,
        alignment: Alignment.topRight,
        width: 200.0,
        height: 200.0,
        padding: EdgeInsets.all(5.0),
        child: SizedOverflowBox(
          size: Size(100.0, 200.0),
          child: Container(color: Colors.red, width: 200.0, height: 100.0,),
        ),
      );
      """,),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      const SizedOverflowBox({
        Key key,
        @required this.size,
        this.alignment = Alignment.center,
        Widget child,
      })
      size：固定的尺寸。

      alignment：对齐方式。
      """,),
    ]);
  }
}