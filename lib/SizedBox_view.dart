import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class SizedBox_view extends StatefulWidget {
  @override
  _SizedBox_viewState createState() => new _SizedBox_viewState();
}

class _SizedBox_viewState extends State<SizedBox_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "SizedBox", <Widget>[
      Text("比较常用的一个控件，设置具体尺寸。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("SizedBox布局行为相对较简单："),
      Text("1.child不为null时，如果设置了宽高，则会强制把child尺寸调到此宽高；如果没有设置宽高，则会根据child尺寸进行调整；"),
      Text("2.child为null时，如果设置了宽高，则自身尺寸调整到此宽高值，如果没设置，则尺寸为0；"),
      Text("示例代码:"),
      MarkdownBody(data: """
      Container(
        color: Colors.green,
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 300.0,
          ),
        ),
      )
      """,),
      Container(
        color: Colors.green,
        padding: const EdgeInsets.all(5.0),
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 300.0,
          ),
        ),
      ),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      const SizedBox({ Key key, this.width, this.height, Widget child })
      width：宽度值，如果具体设置了，则强制child宽度为此值，如果没设置，则根据child宽度调整自身宽度。

      height：同上。
      """,),

    ]);
  }
}