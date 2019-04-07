import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';
const width = 10.0;
const height = 10.0;
class Flow_view extends StatefulWidget {
  @override
  _Flow_viewState createState() => new _Flow_viewState();
}

class _Flow_viewState extends State<Flow_view> {
  
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Flow", <Widget>[
      Text("一个实现流式布局算法的控件。流式布局在大前端是很常见的布局方式，但是一般使用Flow很少，因为其过于复杂，很多场景下都会去使用Wrap。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("""
      Flow官方介绍是一个对child尺寸以及位置调整非常高效的控件，主要是得益于其FlowDelegate。另外Flow在用转换矩阵（transformation matrices）对child进行位置调整的时候进行了优化。
Flow以及其child的一些约束都会受到FlowDelegate的控制，例如重写FlowDelegate中的geiSize，可以设置Flow的尺寸，重写其getConstraintsForChild方法，可以设置每个child的布局约束条件。
Flow之所以高效，是因为其在定位过后，如果使用FlowDelegate中的paintChildren改变child的尺寸或者位置，只是重绘，并没有实际调整其位置。
      """),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      const width = 80.0;
      const height = 60.0;

      Flow(
        delegate: TestFlowDelegate(margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
        children: <Widget>[
          new Container(width: width, height: height, color: Colors.yellow,),
          new Container(width: width, height: height, color: Colors.green,),
          new Container(width: width, height: height, color: Colors.red,),
          new Container(width: width, height: height, color: Colors.black,),
          new Container(width: width, height: height, color: Colors.blue,),
          new Container(width: width, height: height, color: Colors.lightGreenAccent,),
        ],
      )

      class TestFlowDelegate extends FlowDelegate {
        EdgeInsets margin = EdgeInsets.zero;

        TestFlowDelegate({this.margin});
        @override
        void paintChildren(FlowPaintingContext context) {
          var x = margin.left;
          var y = margin.top;
          for (int i = 0; i < context.childCount; i++) {
            var w = context.getChildSize(i).width + x + margin.right;
            if (w < context.size.width) {
              context.paintChild(i,
                  transform: new Matrix4.translationValues(
                      x, y, 0.0));
              x = w + margin.left;
            } else {
              x = margin.left;
              y += context.getChildSize(i).height + margin.top + margin.bottom;
              context.paintChild(i,
                  transform: new Matrix4.translationValues(
                      x, y, 0.0));
              x += context.getChildSize(i).width + margin.left + margin.right;
            }
          }
        }

        @override
        bool shouldRepaint(FlowDelegate oldDelegate) {
          return oldDelegate != this;
        }
      }

      """,),

    
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      Flow({
        Key key,
        @required this.delegate,
        List<Widget> children = const <Widget>[],
      })

      delegate：影响Flow具体布局的FlowDelegate。
      其中FlowDelegate包含如下几个方法：

      getConstraintsForChild: 设置每个child的布局约束条件，会覆盖已有的；
      getSize：设置Flow的尺寸；
      paintChildren：child的绘制控制代码，可以调整尺寸位置，写起来比较的繁琐；
      shouldRepaint：是否需要重绘；
      shouldRelayout：是否需要重新布局。

      其中，我们平时使用的时候，一般会使用到paintChildren以及shouldRepaint两个方法。

      """,),

    ]);
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}