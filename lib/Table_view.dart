import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Table_view extends StatefulWidget {
  @override
  _Table_viewState createState() => new _Table_viewState();
}

class _Table_viewState extends State<Table_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Table", <Widget>[
      Text("一种table布局，这种控件太常见了。至于其表现形式，完全可以借鉴其他移动端的，通俗点讲，就是表格。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("表格的每一行的高度，由其内容决定，每一列的宽度，则由columnWidths属性单独控制。"),
      Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(50.0),
          3: FixedColumnWidth(100.0),
        },
        border: TableBorder.all(color: Colors.red, width: 1.0, style: BorderStyle.solid),
        children: const <TableRow>[
          TableRow(
            children: <Widget>[
              Text('A1'),
              Text('B1'),
              Text('C1'),
              Text('D1'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A2'),
              Text('B2'),
              Text('C2'),
              Text('D2'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A3'),
              Text('B3'),
              Text('C3'),
              Text('D3'),
            ],
          ),
        ],
      ),
      MarkdownBody(data: """
      //一个三行四列的表格，第一三行宽度为50，第二四行宽度为100。
      Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(50.0),
          3: FixedColumnWidth(100.0),
        },
        border: TableBorder.all(color: Colors.red, width: 1.0, style: BorderStyle.solid),
        children: const <TableRow>[
          TableRow(
            children: <Widget>[
              Text('A1'),
              Text('B1'),
              Text('C1'),
              Text('D1'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A2'),
              Text('B2'),
              Text('C2'),
              Text('D2'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A3'),
              Text('B3'),
              Text('C3'),
              Text('D3'),
            ],
          ),
        ],
      )

      """,),

      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      Table({
        Key key,
        this.children = const <TableRow>[],
        this.columnWidths,
        this.defaultColumnWidth = const FlexColumnWidth(1.0),
        this.textDirection,
        this.border,
        this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
        this.textBaseline,
      })


      columnWidths：设置每一列的宽度。
      defaultColumnWidth：默认的每一列宽度值，默认情况下均分。
      textDirection：文字方向，一般无需考虑。
      border：表格边框。
      defaultVerticalAlignment：每一个cell的垂直方向的alignment。
      总共包含5种：

      top：被放置在的顶部；
      middle：垂直居中；
      bottom：放置在底部；
      baseline：文本baseline对齐；
      fill：充满整个cell。

      textBaseline：defaultVerticalAlignment为baseline的时候，会用到这个属性。



      """,)
    ]);
  }
}