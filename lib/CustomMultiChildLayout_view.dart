import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class CustomMultiChildLayout_view extends StatefulWidget {
  @override
  _CustomMultiChildLayout_viewState createState() => new _CustomMultiChildLayout_viewState();
}

class _CustomMultiChildLayout_viewState extends State<CustomMultiChildLayout_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "CustomMultiChildLayout", <Widget>[
      Text("多节点的自定义布局的控件，通过提供的delegate，可以实现控制节点的位置以及尺寸。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("""
      
      CustomMultiChildLayout提供的delegate可以控制子节点的布局，具体在如下几点：

      可以决定每个子节点的布局约束条件；
      可以决定每个子节点的位置；
      可以决定自身的尺寸，但是自身的自身必须不能依赖子节点的尺寸。

      可以看到，跟CustomSingleChildLayout的delegate提供的作用类似，只不过CustomMultiChildLayout的稍微会复杂点。

      
      """),
      TextTitle.getSubTitle("示例代码:"),
      MarkdownBody(data: """
      class TestLayoutDelegate extends MultiChildLayoutDelegate {
        TestLayoutDelegate();

        static const String title = 'title';
        static const String description = 'description';

        @override
        void performLayout(Size size) {
          final BoxConstraints constraints =
              new BoxConstraints(maxWidth: size.width);

          final Size titleSize = layoutChild(title, constraints);
          positionChild(title, new Offset(0.0, 0.0));

          final double descriptionY = titleSize.height;
          layoutChild(description, constraints);
          positionChild(description, new Offset(0.0, descriptionY));
        }

        @override
        bool shouldRelayout(TestLayoutDelegate oldDelegate) => false;
      }

      Container(
        width: 200.0,
        height: 100.0,
        color: Colors.yellow,
        child: CustomMultiChildLayout(
          delegate: TestLayoutDelegate(),
          children: <Widget>[
            LayoutId(
              id: TestLayoutDelegate.title,
              child: new Text("This is title",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
            ),
            LayoutId(
              id: TestLayoutDelegate.description,
              child: new Text("This is description",
                  style: TextStyle(fontSize: 14.0, color: Colors.red)),
            ),
          ],
        ),
      )

      
      """,),
      Container(
        width: 200.0,
        height: 100.0,
        color: Colors.yellow,
        child: CustomMultiChildLayout(
          delegate: TestLayoutDelegate(),
          children: <Widget>[
            LayoutId(
              id: TestLayoutDelegate.title,
              child: new Text("This is title",
                  style: TextStyle(fontSize: 20.0, color: Colors.black)),
            ),
            LayoutId(
              id: TestLayoutDelegate.description,
              child: new Text("This is description",
                  style: TextStyle(fontSize: 14.0, color: Colors.red)),
            ),
          ],
        ),
      ),
      Text("""
      上面的TestLayoutDelegate作用很简单，对子节点进行尺寸以及位置调整。可以看到，每一个子节点必须用一个LayoutId控件包裹起来，在delegate中可以对不同id的控件进行调整。
      """),
      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
        CustomMultiChildLayout({
          Key key,
          @required this.delegate,
          List<Widget> children = const <Widget>[],
        })
        delegate：对子节点进行尺寸以及位置调整的delegate。
      """,)
    ]);
  }
}

class TestLayoutDelegate extends MultiChildLayoutDelegate {
  TestLayoutDelegate();

  static const String title = 'title';
  static const String description = 'description';

  @override
  void performLayout(Size size) {
    final BoxConstraints constraints =
        new BoxConstraints(maxWidth: size.width);

    final Size titleSize = layoutChild(title, constraints);
    positionChild(title, new Offset(0.0, 0.0));

    final double descriptionY = titleSize.height;
    layoutChild(description, constraints);
    positionChild(description, new Offset(0.0, descriptionY));
  }

  @override
  bool shouldRelayout(TestLayoutDelegate oldDelegate) => false;
}