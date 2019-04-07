import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Baseline_View extends StatefulWidget {
  @override
  _Baseline_ViewState createState() => _Baseline_ViewState();
}

class _Baseline_ViewState extends State<Baseline_View> {
  Widget _getSubTitle(String text){
    return new Text(
      text,
      style: new TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Baseline"),
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text("根据child的baseline，来调整child的位置。例如两个字号不一样的文字，希望底部在一条水平线上，就可以使用这个控件，是一个非常基础的控件"),
            _getSubTitle("布局行为"),
            new Text("Baseline控件布局行为分为两种情况："),
            new Text("1,如果child有baseline，则根据child的baseline属性，调整child的位置；"),
            new Text("2.如果child没有baseline，则根据child的bottom，来调整child的位置。"),
            _getSubTitle("例子"),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Text(
                    'TjTjTj',
                    style: new TextStyle(
                      fontSize: 20.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Container(
                    width: 30.0,
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Text(
                    'RyRyRy',
                    style: new TextStyle(
                      fontSize: 35.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
              ],
            ),
            new MarkdownBody(data: """
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Text(
                    'TjTjTj',
                    style: new TextStyle(
                      fontSize: 20.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Container(
                    width: 30.0,
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                new Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: new Text(
                    'RyRyRy',
                    style: new TextStyle(
                      fontSize: 35.0,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                ),
              ],
            )
            
            """,),
            new Text("上述运行结果是左右两个文本跟中间的Container底部在一个水平线上"),
            _getSubTitle("源码解析："),
            new MarkdownBody(data: """
            const Baseline({
              Key key,
              @required this.baseline,//baseline数值，必须要有，从顶部算
              @required this.baselineType,//bseline类型，也是必须要有的，目前有两种类型：alphabetic：对齐字符底部的水平线,ideographic：对齐表意字符的水平线
              Widget child
            })
            """,),
          ],
        ),
      ),
    );
  }
}
