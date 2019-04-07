import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Stack_view extends StatefulWidget {
  @override
  _Stack_viewState createState() => new _Stack_viewState();
}

class _Stack_viewState extends State<Stack_view> {
  @override
  Widget build(BuildContext context) {
    return BaseView_fr().getBaseFR(context, "Stack", <Widget>[
      Text("Stack可以类比web中的absolute，绝对布局。绝对布局一般在移动端开发中用的较少，但是在某些场景下，还是有其作用。当然，能用Stack绝对布局完成的，用其他控件组合也都能实现。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("Stack的布局行为，根据child是positioned还是non-positioned来区分。"),
      Text("1.对于positioned的子节点，它们的位置会根据所设置的top、bottom、right以及left属性来确定，这几个值都是相对于Stack的左上角；"),
      Text("2.对于non-positioned的子节点，它们会根据Stack的aligment来设置位置。"),

      Text("对于绘制child的顺序，则是第一个child被绘制在最底端，后面的依次在前一个child的上面，类似于web中的z-index。如果想调整显示的顺序，则可以通过摆放child的顺序来进行。"),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/pic.jpg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Mia B',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );

      """,),
      Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('123.jpeg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'Mia B',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      Stack({
        Key key,
        this.alignment = AlignmentDirectional.topStart,
        this.textDirection,
        this.fit = StackFit.loose,
        this.overflow = Overflow.clip,
        List<Widget> children = const <Widget>[],
      })

      alignment：对齐方式，默认是左上角（topStart）。
      textDirection：文本的方向，绝大部分不需要处理。
      fit：定义如何设置non-positioned节点尺寸，默认为loose。
      其中StackFit有如下几种：

      loose：子节点宽松的取值，可以从min到max的尺寸；
      expand：子节点尽可能的占用空间，取max尺寸；
      passthrough：不改变子节点的约束条件。

      overflow：超过的部分是否裁剪掉（clipped）。

      """,),
      TextTitle.getSubTitle("使用场景:"),
      Text("Stack的场景还是比较多的，对于需要叠加显示的布局，一般都可以使用Stack。有些场景下，也可以被其他控件替代，我们应该选择开销较小的控件去实现。"),

    ]);
  }
}