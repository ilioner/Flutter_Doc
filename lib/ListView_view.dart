import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class ListView_view extends StatefulWidget {
  @override
  _ListView_viewState createState() => new _ListView_viewState();
}

class _ListView_viewState extends State<ListView_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "ListView", <Widget>[
      Text("ListView在主轴方向可以滚动，在交叉轴方向，则是填满ListView。"),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text('I\'m dedicating every day to you'),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
        ],
      )

      ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("\$index"),
          );
        },
      )


      """,),
      ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text('I\'m dedicating every day to you'),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
        ],
      ),
    
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      ListView({
        Key key,
        Axis scrollDirection = Axis.vertical,
        bool reverse = false,
        ScrollController controller,
        bool primary,
        ScrollPhysics physics,
        bool shrinkWrap = false,
        EdgeInsetsGeometry padding,
        this.itemExtent,
        bool addAutomaticKeepAlives = true,
        bool addRepaintBoundaries = true,
        double cacheExtent,
        List<Widget> children = const <Widget>[],
      })
      同时也提供了如下额外的三种构造方法，方便开发者使用。



      ListView.builder
      ListView.separated
      ListView.custom

      """,),
      
    ]);
  }
}