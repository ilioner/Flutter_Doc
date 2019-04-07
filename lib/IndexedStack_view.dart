import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class IndexedStack_view extends StatefulWidget {
  @override
  _IndexedStack_viewState createState() => new _IndexedStack_viewState();
}

class _IndexedStack_viewState extends State<IndexedStack_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "IndexedStack", <Widget>[
      Text("IndexedStack继承自Stack，它的作用是显示第index个child，其他child都是不可见的。所以IndexedStack的尺寸永远是跟最大的子节点尺寸一致。"),
      TextTitle.getSubTitle("示例:"),
      MarkdownBody(data: """

      //将index设置为1，也就是显示含文本的Container的节点。
      Container(
        color: Colors.yellow,
        child: IndexedStack(
          index: 1,
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
        ),
      )

      """,),
      Container(
        color: Colors.yellow,
        child: IndexedStack(
          index: 1,
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
        ),
      ),
      
    ]);
  }
}