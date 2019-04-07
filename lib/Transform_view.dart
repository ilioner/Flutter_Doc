import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';

class Transform_view extends StatefulWidget {
  final Widget child;

  Transform_view({Key key, this.child}) : super(key: key);

  _Transform_viewState createState() => _Transform_viewState();
}

class _Transform_viewState extends State<Transform_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Transform", <Widget>[
      Text("Transform在介绍Container的时候有提到过，就是做矩阵变形的。Container中矩阵变形就是使用的Transform。"),
      TextTitle.getSubTitle("布局行为:"),
      Text("可以对child做平移、旋转、缩放等操作"),
      Text("示例代码:"),
      Center(
        child: Transform(
          transform: Matrix4.rotationZ(0.3),
          child: Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
      MarkdownBody(data:"""
      Center(
        child: Transform(
          transform: Matrix4.rotationZ(0.3),
          child: Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),

      示例中将Container绕z轴旋转了，代码很简单。Matrix4也提供了很多便捷的构造函数供大家使用，因此写起来，并不会有太大的难度。
      """ ,),

      TextTitle.getSubTitle("源码解析:"),
      MarkdownBody(data: """
      const Transform({
        Key key,
        @required this.transform,
        this.origin,
        this.alignment,
        this.transformHitTests = true,
        Widget child,
      })

      上面是其默认的构造函数，Transform也提供下面三种构造函数：

      Transform.rotate
      Transform.translate
      Transform.scale

      transform：一个4x4的矩阵。不难发现，其他平台的变换矩阵也都是四阶的。一些复合操作，仅靠三维是不够的，必须采用额外的一维来补充，感兴趣的同学可以自行搜索了解。
      origin：旋转点，相对于左上角顶点的偏移。默认旋转点事左上角顶点。
      alignment：对齐方式。
      transformHitTests：点击区域是否也做相应的改变。

      这个控件算是较常见的控件，很多平移、旋转、缩放都可以使用的到。如果只是单纯的进行变换的话，用Transform比用Container效率会更高。

      """,),

    ]);
  }
}