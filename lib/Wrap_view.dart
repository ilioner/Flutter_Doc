import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Wrap_view extends StatefulWidget {
  @override
  _Wrap_viewState createState() => new _Wrap_viewState();
}

class _Wrap_viewState extends State<Wrap_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Wrap", <Widget>[
      TextTitle.getSubTitle("布局行为:"),
      Text("Flow可以很轻易的实现Wrap的效果，但是Wrap更多的是在使用了Flex中的一些概念，某种意义上说是跟Row、Column更加相似的。"),

      Text("""
      单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Row表现几乎一致。但Row与Column都是单行单列的，Wrap则突破了这个限制，mainAxis上空间不足时，则向crossAxis上去扩展显示。
      从效率上讲，Flow肯定会比Wrap高，但是Wrap使用起来会方便一些。

      """),

      Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('AH', style: TextStyle(fontSize: 10.0),)),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('ML', style: TextStyle(fontSize: 10.0),)),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('HM', style: TextStyle(fontSize: 10.0),)),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
        ],
      ),
      TextTitle.getSubTitle("示例:"),
      MarkdownBody(data: """
      Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('AH', style: TextStyle(fontSize: 10.0),)),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('ML', style: TextStyle(fontSize: 10.0),)),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('HM', style: TextStyle(fontSize: 10.0),)),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900, child: new Text('JL', style: TextStyle(fontSize: 10.0),)),
            label: Text('Laurens'),
          ),
        ],
      )
      """,),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      Wrap({
        Key key,
        this.direction = Axis.horizontal,
        this.alignment = WrapAlignment.start,
        this.spacing = 0.0,
        this.runAlignment = WrapAlignment.start,
        this.runSpacing = 0.0,
        this.crossAxisAlignment = WrapCrossAlignment.start,
        this.textDirection,
        this.verticalDirection = VerticalDirection.down,
        List<Widget> children = const <Widget>[],
      })

      direction：主轴（mainAxis）的方向，默认为水平。
      alignment：主轴方向上的对齐方式，默认为start。
      spacing：主轴方向上的间距。
      runAlignment：run的对齐方式。run可以理解为新的行或者列，如果是水平方向布局的话，run可以理解为新的一行。
      runSpacing：run的间距。
      crossAxisAlignment：交叉轴（crossAxis）方向上的对齐方式。
      textDirection：文本方向。
      verticalDirection：定义了children摆放顺序，默认是down，见Flex相关属性介绍。


      """,)
    ]);
  }
}