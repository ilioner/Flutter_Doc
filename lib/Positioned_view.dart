import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Positioned_view extends StatefulWidget {
  @override
  _Positioned_viewState createState() => new _Positioned_viewState();
}

class _Positioned_viewState extends State<Positioned_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Positioned", <Widget>[
      TextTitle.getSubTitle("构造函数:"),
      MarkdownBody(data: """
      const Positioned({
        Key key,
        this.left, 
        this.top,
        this.right,
        this.bottom,
        this.width,
        this.height,
        @required Widget child,
      })

      left、top 、right、 bottom分别代表离Stack左、上、右、底四边的距离。width和height用于指定定位元素的宽度和高度，注意，此处的width、height 和其它地方的意义稍微有点区别，此处用于配合left、top 、right、 bottom来定位widget，举个例子，在水平方向时，你只能指定left、right、width三个属性中的两个，如指定left和width后，right会自动算出(left+width)，如果同时指定三个属性则会报错，垂直方向同理。
      """,),
      TextTitle.getSubTitle("示例:"),
      //通过ConstrainedBox来确保Stack占满屏幕
      Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )        
          ],
        ),
      MarkdownBody(data: """
      //通过ConstrainedBox来确保Stack占满屏幕
      Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )        
          ],
        ),
      """,)
    ]);
  }
}