import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Column_view extends StatefulWidget {
  @override
  _Column_viewState createState() => new _Column_viewState();
}

class _Column_viewState extends State<Column_view> {
  @override
  Widget build(BuildContext context) {
    return BaseView_fr().getBaseFR(context, "Column", <Widget>[
      new Text("Column可以在垂直方向排列其子widget。参数和Row一样，不同的是布局方向为垂直，主轴纵轴正好相反，读者可类比Row来理解，在此不再赘述。"),
      TextTitle.getSubTitle("特殊情况:"),
      Text("如果Row里面嵌套Row，或者Column里面再嵌套Column，那么只有对最外面的Row或Column会占用尽可能大的空间，里面Row或Column所占用的空间为实际大小，下面以Column为例说明："),
      MarkdownBody(data: """
      Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度  
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              )
            ],
          ),
        ),
      );
      """,),
      Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度  
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      new Text("如果要让里面的Colum占满外部Colum，可以使用Expanded widget："),
      MarkdownBody(data: """
      Expanded( 
        child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
            children: <Widget>[
              Text("hello world "),
              Text("I am Jack "),
            ],
          ),
        ),
      )
      """,)
    ]);
  }
}