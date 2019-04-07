import 'package:flutter/material.dart';
import 'TextTool.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class IntrinsicHeight_view extends StatefulWidget {
  @override
  _IntrinsicHeight_viewState createState() => _IntrinsicHeight_viewState();
}

class _IntrinsicHeight_viewState extends State<IntrinsicHeight_view> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("IntrinsicHeight"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("IntrinsicHeight的作用是调整child到固定的高度，官方说这个很有用，但是应该尽量少用，因为其效率问题。"),
            TextTitle.getSubTitle("布局行为"),
            Text("这个控件的作用，是将可能高度不受限制的child，调整到一个合适并且合理的尺寸。"),
            TextTitle.getSubTitle("IntrinsicHeight包裹效果"),
            MarkdownBody(data: """
            new IntrinsicHeight(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(color: Colors.blue, width: 100.0),
                  new Container(color: Colors.red, width: 50.0,height: 50.0,),
                  new Container(color: Colors.yellow, width: 150.0),
                ],
              ),
            ),
            """,),
            new IntrinsicHeight(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(color: Colors.blue, width: 100.0),
                  new Container(color: Colors.red, width: 50.0,height: 50.0,),
                  new Container(color: Colors.yellow, width: 150.0),
                ],
              ),
            ),
            TextTitle.getSubTitle("无IntrinsicHeight包裹效果"),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(color: Colors.blue, width: 100.0),
                new Container(color: Colors.red, width: 50.0,height: 50.0,),
                new Container(color: Colors.yellow, width: 150.0),
              ],
            ),
            Text("当没有IntrinsicHeight包裹着，可以看到，第一三个由于没有设定所以无法显示，当外层套一个IntrinsicHeight，第一三个Container高度就调整到第二个一样的高度。"),
            TextTitle.getSubTitle("源码解析"),
            MarkdownBody(data: """
            const IntrinsicHeight({ Key key, Widget child })
            除了child，没有提供额外的属性。
            """,),
          ],
        ),
      ),
    );
  }
}
