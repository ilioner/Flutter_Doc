import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


class AspectRatio_view extends StatefulWidget {
  @override
  _AspectRatio_viewState createState() => new _AspectRatio_viewState();
}

class _AspectRatio_viewState extends State<AspectRatio_view> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AspectRatio"),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Container(
        child:new SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Text("AspectRatio的作用是调整child到设置的宽高比",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
              Text("AspectRatio的布局行为分为两种情况："),
              Text("1.AspectRatio首先会在布局限制条件允许的范围内尽可能的扩展，widget的高度是由宽度和比率决定的，类似于BoxFit中的contain，按照固定比率去尽量占满区域"),
              Text("2.如果在满足所有限制条件过后无法找到一个可行的尺寸，AspectRatio最终将会去优先适应布局限制条件，而忽略所设置的比率"),
              Text("Object > Diagnosticable > DiagnosticableTree > Widget > RenderObjectWidget > SingleChildRenderObjectWidget > AspectRatio"),
              new Container(
                height: 200.0,
                child: new AspectRatio(
                  aspectRatio: 1.5,
                  child: new Container(
                    color: Colors.red,
                  ),
                ),
              ),
              MarkdownBody(data: """
              new Container(
                height: 200.0,
                child: new AspectRatio(
                  aspectRatio: 1.5,
                  child: new Container(
                    color: Colors.red,
                  ),
                ),
              );""",),
              Text("示例代码是定义了一个高度为200的区域，内部AspectRatio比率设置为1.5，最终AspectRatio的是宽300高200的一个区域。"),
              MarkdownBody(data: """
              const AspectRatio({
                Key key,
                @required this.aspectRatio,//aspectRatio是宽高比，最终可能不会根据这个值去布局，具体则要看综合因素，外层是否允许按照这种比率进行布局，只是一个参考值。
                Widget child
              })""",),
            ],
          ),
        )
      ),
    );
  }
}