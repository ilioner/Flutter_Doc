import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import "BaseView_fr.dart";
import 'TextTool.dart';

class OverflowBox_view extends StatefulWidget {
  @override
  _OverflowBox_viewState createState() => new _OverflowBox_viewState();
}

class _OverflowBox_viewState extends State<OverflowBox_view> {
  @override
  Widget build(BuildContext context) {
    return BaseView_fr().getBaseFR(context, "OverflowBox", <Widget>[
      Text("OverflowBox这个控件，允许child超出parent的范围显示，当然不用这个控件，也有很多种方式实现类似的效果。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("当OverflowBox的最大尺寸大于child的时候，child可以完整显示，当其小于child的时候，则以最大尺寸为基准，当然，这个尺寸都是可以突破父节点的。最后加上对齐方式，完成布局。"),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(5.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 300.0,
          maxHeight: 500.0,
          child: Container(
            color: Color(0x33FF00FF),
            width: 400.0,
            height: 400.0,
          ),
        ),
      )

      """,),
      Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(5.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 300.0,
          maxHeight: 500.0,
          child: Container(
            color: Color(0x33FF00FF),
            width: 400.0,
            height: 400.0,
          ),
        ),
      ),
      Image.network("https://user-gold-cdn.xitu.io/2018/7/21/164ba2677dd24f4c?imageView2/0/w/1280/h/960/format/webp/ignore-error/1",width: MediaQuery.of(context).size.width,),
      Text("当maxHeight大于height的时候，可以完全显示下来，当maxHeight小于height的时候，则不会会被隐藏掉"),
      Text("源码解析:"),
      MarkdownBody(data: """
      const OverflowBox({
        Key key,
        this.alignment = Alignment.center,
        this.minWidth,
        this.maxWidth,
        this.minHeight,
        this.maxHeight,
        Widget child,
      })
      alignment：对齐方式。
      minWidth：允许child的最小宽度。如果child宽度小于这个值，则按照最小宽度进行显示。
      maxWidth：允许child的最大宽度。如果child宽度大于这个值，则按照最大宽度进行展示。
      minHeight：允许child的最小高度。如果child高度小于这个值，则按照最小高度进行显示。
      maxHeight：允许child的最大高度。如果child高度大于这个值，则按照最大高度进行展示。
      其中，最小以及最大宽高度，如果为null的时候，就取父节点的constraint代替。
      """,),

    ]);
  }
}