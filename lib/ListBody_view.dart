import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class ListBody_view extends StatefulWidget {
  @override
  _ListBody_viewState createState() => new _ListBody_viewState();
}

class _ListBody_viewState extends State<ListBody_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "ListBody", <Widget>[
      Text("ListBody是一个不常直接使用的控件，一般都会配合ListView或者Column等控件使用。ListBody的作用是按给定的轴方向，按照顺序排列子节点。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("""
      在主轴上，子节点按照顺序进行布局，在交叉轴上，子节点尺寸会被拉伸，以适应交叉轴的区域。

      在主轴上，给予子节点的空间必须是不受限制的（unlimited），使得子节点可以全部被容纳，ListBody不会去裁剪或者缩放其子节点。


      """),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            reverse: false,
            children: <Widget>[
              Container(color: Colors.red, width: 50.0, height: 50.0,),
              Container(color: Colors.yellow, width: 50.0, height: 50.0,),
              Container(color: Colors.green, width: 50.0, height: 50.0,),
              Container(color: Colors.blue, width: 50.0, height: 50.0,),
              Container(color: Colors.black, width: 50.0, height: 50.0,),
            ],
        )],
      )

      """,),
      Flex(
        direction: Axis.vertical,
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            reverse: false,
            children: <Widget>[
              Container(color: Colors.red, width: 50.0, height: 50.0,),
              Container(color: Colors.yellow, width: 50.0, height: 50.0,),
              Container(color: Colors.green, width: 50.0, height: 50.0,),
              Container(color: Colors.blue, width: 50.0, height: 50.0,),
              Container(color: Colors.black, width: 50.0, height: 50.0,),
            ],
        )],
      ),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      ListBody({
        Key key,
        this.mainAxis = Axis.vertical,
        this.reverse = false,
        List<Widget> children = const <Widget>[],
      })

      mainAxis：排列的主轴方向。

      reverse：是否反向。

      """,)

    ]);
  }
}