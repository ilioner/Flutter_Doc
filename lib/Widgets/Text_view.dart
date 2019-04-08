import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../BaseView_fr.dart';
import '../TextTool.dart';

class Text_view extends StatefulWidget {
  @override
  _Text_viewState createState() => new _Text_viewState();
}

class _Text_viewState extends State<Text_view> {
  @override
  Widget build(BuildContext context) {
    return new BaseView_fr().getBaseFR(context, "Text", <Widget>[
      Text("Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性"),
      TextTitle.getSubTitle("各种示例:"),
      MarkdownBody(data: """
        Text("Hello world",
          textAlign: TextAlign.center,
        );

        Text("Hello world! I'm Jack. "*4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );

        Text("Hello world",
          textScaleFactor: 1.5,
        );
      """,),

      Text("Hello world",
        textAlign: TextAlign.center,
      ),

      Text("Hello world! I'm Jack. "*4,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),

      Text("Hello world",
        textScaleFactor: 1.5,
      ),
    ]);
  }
}