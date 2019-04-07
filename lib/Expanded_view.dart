import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Expanded_view extends StatefulWidget {
  @override
  _Expanded_viewState createState() => new _Expanded_viewState();
}

class _Expanded_viewState extends State<Expanded_view> {
  @override
  Widget build(BuildContext context) {
    return BaseView_fr().getBaseFR(context, "Expanded", <Widget>[
      Text("Expanded强制子组件填充可用空间"),
      TextTitle.getSubTitle("示例:"),
      new Row(
      //使用水平布局Row控件让子控件水平排列,点击Row看有哪些属性可以使用
        children: <Widget>[
            new Container(
              //设置第一个子控件的宽度是150像素
              width: 150.0,
              child: new Text("我是普通容器包裹的。"),
            ),
            //Expanded强制子组件填充可用空间
            new Expanded(child: new Container(
              //加宽度是为了证明,Expanded不受这个宽度约束,强制子组件填充可用空间
              width: 20.0,
              child: new Text(
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
                  "Expanded包裹的子组件"
              )
            )),
        ],
      ),
      MarkdownBody(data: """
      new Row(
      //使用水平布局Row控件让子控件水平排列,点击Row看有哪些属性可以使用
      children: <Widget>[
          new Container(
            //设置第一个子控件的宽度是150像素
            width: 150.0,
            child: new Text("我是普通容器包裹的。"),
          ),
          //Expanded强制子组件填充可用空间
          new Expanded(child: new Container(
             //加宽度是为了证明,Expanded不受这个宽度约束,强制子组件填充可用空间
             width: 20.0,
             child: new Text(
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
                "Expanded包裹的子组件"
            )
          )),
      ],
      
      """,),
    ]);
  }
}