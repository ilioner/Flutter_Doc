import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class LimitedBox_view extends StatefulWidget {
  @override
  _LimitedBox_viewState createState() => new _LimitedBox_viewState();
}

class _LimitedBox_viewState extends State<LimitedBox_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "LimitedBox", <Widget>[
      Text("LimitedBox，通过字面意思，也可以猜测出这个控件的作用，是限制类型的控件。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("LimitedBox是将child限制在其设定的最大宽高中的，但是这个限定是有条件的。当LimitedBox最大宽度不受限制时，child的宽度就会受到这个最大宽度的限制，同理高度。"),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 100.0,
        ),
        LimitedBox(
          maxWidth: 150.0,
          child: Container(
            color: Colors.blue,
            width: 250.0,
          ),
        ),
      ],
    )
      """,),
      Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 150.0,
            child: Container(
              color: Colors.blue,
              width: 250.0,
            ),
          ),
        ],
      ),
      TextTitle.getSubTitle("源码解析"),
      MarkdownBody(data: """
      const LimitedBox({
        Key key,
        this.maxWidth = double.infinity,
        this.maxHeight = double.infinity,
        Widget child,
      })
      maxWidth：限定的最大宽度，默认值是double.infinity，不能为负数。

      maxHeight：同上。
      """,),
    ]);
  }
}