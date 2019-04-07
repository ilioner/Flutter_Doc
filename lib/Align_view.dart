import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Align_view extends StatefulWidget {
  @override
  _Align_viewState createState() => new _Align_viewState();
}

class _Align_viewState extends State<Align_view> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Align"),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.lightBlue,
        child: new SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Align本身实现的功能并不复杂，设置child的对齐方式，例如居中、居左居右等，并根据child尺寸调节自身尺寸。"),
              new Text("\n"),
              new Text("Align的布局行为分为两种情况："),
              new Text("1.当widthFactor和heightFactor为null的时候，当其有限制条件的时候，Align会根据限制条件尽量的扩展自己的尺寸，当没有限制条件的时候，会调整到child的尺寸；"),
              new Text("2.当widthFactor或者heightFactor不为null的时候，Aligin会根据factor属性，扩展自己的尺寸，例如设置widthFactor为2.0的时候，那么，Align的宽度将会是child的两倍。"),
              new Text("总而言之:如果外层元素尺寸不确定的话，内部的对齐就无法确定。因此，会有宽高因子、根据外层限制扩大到最大尺寸、外层不确定时调整到child尺寸这些行为。"),
              new Text("继承关系:Object > Diagnosticable > DiagnosticableTree > Widget > RenderObjectWidget > SingleChildRenderObjectWidget > Align"),
              new Text("示例代码"),
              new MarkdownBody(data: """

              //设置一个宽高为child两倍区域的Align，其child处在正中间
              new Align(
                alignment: Alignment.center,
                widthFactor: 2.0,
                heightFactor: 2.0,
                child: new Text("Align"),
              )
              """),

              new Text("源码:"),
              new MarkdownBody(data:"""
                const Align({
                  Key key,
                  this.alignment: Alignment.center,
                  this.widthFactor,
                  this.heightFactor,
                  Widget child
                })
              """),

            ],
          ),
        ),
      ),
    );
  }
}