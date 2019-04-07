import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';
import 'package:flutter/cupertino.dart';

class Offstage_view extends StatefulWidget {
  @override
  _Offstage_viewState createState() => new _Offstage_viewState();
}

class _Offstage_viewState extends State<Offstage_view> {

  var offstage = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.setState(
      (){
        offstage = offstage;
      }
    );
    print(this.offstage.toString());
  }

  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Offstage", <Widget>[
      Text("Offstage的作用很简单，通过一个参数，来控制child是否显示，日常使用中也算是比较常用的控件。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("Offstage的布局行为完全取决于其offstage参数"),
      Text("1.当offstage为true，当前控件不会被绘制在屏幕上，不会响应点击事件，也不会占用空间；"),
      Text("2.当offstage为false，当前控件则跟平常用的控件一样渲染绘制；"),
      Text("另外，当Offstage不可见的时候，如果child有动画，应该手动停掉，Offstage并不会停掉动画"),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Column(
        children: <Widget>[
          new Offstage(
            offstage: offstage,
            child: Container(color: Colors.blue, height: 100.0),
          ),
          new CupertinoButton(
            child: Text("点击切换显示"),
            onPressed: () {
              setState(() {
                offstage = !offstage;
              });
            },
          ),
        ],
      )
      """,),
      Column(
        children: <Widget>[
          new Offstage(
            offstage: offstage,
            child: Container(color: Colors.blue, height: 100.0),
          ),
          new CupertinoButton(
            child: Text("点击切换显示"),
            onPressed: () {
              setState(() {
                offstage = !offstage;
              });
            },
          ),
        ],
      ),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      const Offstage({ Key key, this.offstage = true, Widget child })
      offstage：默认为true，也就是不显示，当为flase的时候，会显示该控件。
      """,),
    ]);
  }
}