import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';//markdown组件


class Padding_View extends StatefulWidget {
  @override
  _Padding_ViewState createState() => new _Padding_ViewState();
}

class _Padding_ViewState extends State<Padding_View>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(vsync: this);
  }
  
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    String code1 = """
      Padding({
        ...
        EdgeInsetsGeometry padding,
        Widget child,
      })
    """;
    String code2 = """
    new Container(
      child: new Padding(
        padding: new EdgeInsets.all(16.0),//上下左右各添加16像素补白
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: new Text("设置左侧补白8像素"),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: new Text("设置上下20像素补白"),
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 30),
              child: new Text("设置四个方向补白"),
            )
          ],
        ),
      ),
    )
    """;
    return new Scaffold(
      appBar: AppBar(
        leading: new IconButton(icon: new Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },),
        title: new Text("Padding"),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text("Padding可以给其子节点添加补白（填充）",style: TextStyle(fontSize: 20),),
            new MarkdownBody(data: code1),
            new Text("EdgeInsetsGeometry是一个抽象类，开发中，我们一般都使用EdgeInsets，它是EdgeInsetsGeometry的一个子类，定义了一些设置补白的便捷方法。\n\n\n"),
            new Text("* fromLTRB(double left, double top, double right, double bottom)：分别指定四个方向的补白。"),
            new Text("* all(double value) : 所有方向均使用相同数值的补白。"),
            new Text("* only({left, top, right ,bottom })：可以设置具体某个方向的补白(可以同时指定多个方向)。"),
            new Text("* symmetric({ vertical, horizontal })：用于设置对称方向的补白，vertical指top和bottom，horizontal指left和right。"),
            new Text("示例："),

            new Container(
              child: new Padding(
                padding: new EdgeInsets.all(16.0),//上下左右各添加16像素补白
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: new Text("设置左侧补白8像素"),
                    ),
                    new Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: new Text("设置上下20像素补白"),
                    ),
                    new Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 10, 30),
                      child: new Text("设置四个方向补白"),
                    )
                  ],
                ),
              ),
            ),

            new MarkdownBody(data: code2),
          ],
        ),
      ),
    );
  }
}