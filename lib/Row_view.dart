import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Row_view extends StatefulWidget {
  @override
  _Row_viewState createState() => new _Row_viewState();
}

class _Row_viewState extends State<Row_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Row", <Widget>[
      new Text("在Flutter中非常常见的一个多子节点控件，将children排列成一行。估计是借鉴了Web中Flex布局，所以很多属性和表现，都跟其相似。但是注意一点，自身不带滚动属性，如果超出了一行，在debug下面则会显示溢出的提示。"),
      TextTitle.getSubTitle("布局行为:"),
      new Text("Row的布局有六个步骤，这种布局表现来自Flex（Row和Column的父类）："),
      new Text("1.首先按照不受限制的主轴（main axis）约束条件，对flex为null或者为0的child进行布局，然后按照交叉轴（ cross axis）的约束，对child进行调整；"),
      new Text("2.按照不为空的flex值，将主轴方向上剩余的空间分成相应的几等分；"),
      new Text("3.对上述步骤flex值不为空的child，在交叉轴方向进行调整，在主轴方向使用最大约束条件，让其占满步骤2所分得的空间；"),
      new Text("4.Flex交叉轴的范围取自子节点的最大交叉轴；"),
      new Text("5.主轴Flex的值是由mainAxisSize属性决定的，其中MainAxisSize可以取max、min以及具体的value值；"),
      new Text("6.每一个child的位置是由mainAxisAlignment以及crossAxisAlignment所决定。"),
      new Image.network("https://user-gold-cdn.xitu.io/2018/8/2/164f7c062937c43b?imageView2/0/w/1280/h/960/format/webp/ignore-error/1",
      height: 200.0,),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
        ],
      )
      一个很简单的例子，使用Expanded控件，将一行的宽度分成四个等分，第一、三个child占1/4的区域，第二个child占1/2区域，由flex属性控制。
      """,),
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
        ],
      ),

      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      Row({
        Key key,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.max,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        TextDirection textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        TextBaseline textBaseline,
        List<Widget> children = const <Widget>[],
      })
      
      MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
      其中MainAxisAlignment枚举值：

      center：将children放置在主轴的中心；
      end：将children放置在主轴的末尾；
      spaceAround：将主轴方向上的空白区域均分，使得children之间的空白区域相等，但是首尾child的空白区域为1/2；
      spaceBetween：将主轴方向上的空白区域均分，使得children之间的空白区域相等，首尾child都靠近首尾，没有间隙；
      spaceEvenly：将主轴方向上的空白区域均分，使得children之间的空白区域相等，包括首尾child；
      start：将children放置在主轴的起点；

      其中spaceAround、spaceBetween以及spaceEvenly的区别，就是对待首尾child的方式。其距离首尾的距离分别是空白区域的1/2、0、1。
      MainAxisSize：在主轴方向占有空间的值，默认是max。
      MainAxisSize的取值有两种：

      max：根据传入的布局约束条件，最大化主轴方向的可用空间；
      min：与max相反，是最小化主轴方向的可用空间；

      CrossAxisAlignment：children在交叉轴方向的对齐方式，与MainAxisAlignment略有不同。
      CrossAxisAlignment枚举值有如下几种：

      baseline：在交叉轴方向，使得children的baseline对齐；
      center：children在交叉轴上居中展示；
      end：children在交叉轴上末尾展示；
      start：children在交叉轴上起点处展示；
      stretch：让children填满交叉轴方向；

      TextDirection：阿拉伯语系的兼容设置，一般无需处理。
      VerticalDirection：定义了children摆放顺序，默认是down。
      VerticalDirection枚举值有两种：

      down：从top到bottom进行布局；
      up：从bottom到top进行布局。

      top对应Row以及Column的话，就是左边和顶部，bottom的话，则是右边和底部。
      TextBaseline：使用的TextBaseline的方式，有两种，前面已经介绍过。
      """,),

    ]);
  }
}