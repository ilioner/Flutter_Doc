import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'TextTool.dart';

class IntrinsicWidth_view extends StatefulWidget {
  @override
  _IntrinsicWidth_viewState createState() => new _IntrinsicWidth_viewState();
}

class _IntrinsicWidth_viewState extends State<IntrinsicWidth_view> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("IntrinsicWidth"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("IntrinsicWidth从描述看，跟IntrinsicHeight类似，一个是调整高度，一个是调整宽度。同样是会存在效率问题"),
            TextTitle.getSubTitle("布局行为"),
            Text("IntrinsicWidth不同于IntrinsicHeight，它包含了额外的两个参数，stepHeight以及stepWidth。而IntrinsicWidth的布局行为跟这两个参数相关"),
            Text("1.当stepWidth不是null的时候，child的宽度将会是stepWidth的倍数，当stepWidth值比child最小宽度小的时候，这个值不起作用；"),
            Text("2.当stepWidth为null的时候，child的宽度是child的最小宽度；"),
            Text("3.当stepHeight不为null的时候，效果跟stepWidth相同；"),
            Text("4.当stepHeight为null的时候，高度取最大高度。"),
            TextTitle.getSubTitle("示例代码"),
            MarkdownBody(data: """
            new Container(
              color: Colors.green,
              padding: const EdgeInsets.all(5.0),
              child: new IntrinsicWidth(
                stepHeight: 450.0,
                stepWidth: 300.0,
                child: new Column(
                  children: <Widget>[
                    new Container(color: Colors.blue, height: 100.0),
                    new Container(color: Colors.red, width: 150.0, height: 100.0),
                    new Container(color: Colors.yellow, height: 150.0,),
                  ],
                ),
              ),
            )
            """,),
            new Container(
              color: Colors.green,
              padding: const EdgeInsets.all(5.0),
              child: new IntrinsicWidth(
                stepHeight: 450.0,
                stepWidth: 300.0,
                child: new Column(
                  children: <Widget>[
                    new Container(color: Colors.blue, height: 100.0),
                    new Container(color: Colors.red, width: 150.0, height: 100.0),
                    new Container(color: Colors.yellow, height: 150.0,),
                  ],
                ),
              ),
            ),
            TextTitle.getSubTitle("构造函数:"),
            MarkdownBody(data: """
            const IntrinsicWidth({ Key key, this.stepWidth, this.stepHeight, Widget child })
            stepWidth：可以为null，效果参看上面所说的布局行为。

            stepHeight：可以为null，效果参看上面所说的布局行为。
            """,),
          ],
        ),
      ),
    );
  }
}