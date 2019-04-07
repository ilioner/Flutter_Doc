import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/material.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Flexible_view extends StatefulWidget {
  @override
  _Flexible_viewState createState() => new _Flexible_viewState();
}

class _Flexible_viewState extends State<Flexible_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Flexible", <Widget>[
      Text("Flexible是一个控制Row、Column、Flex等子组件如何布局的组件"),
      Text("Flexible组件可以使Row、Column、Flex等子组件在主轴方向有填充可用空间的能力(例如，Row在水平方向，Column在垂直方向)，但是它与Expanded组件不同，它不强制子组件填充可用空间。"),
      Text("Flexible组件必须是Row、Column、Flex等组件的后裔，并且从Flexible到它封装的Row、Column、Flex的路径必须只包括StatelessWidgets或StatefulWidgets组件(不能是其他类型的组件，像RenderObjectWidgets)。"),
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
            new Flexible(child: new Container(
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
          new Flexible(child: new Container(
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