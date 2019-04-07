import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
class ConstrainedBoxView extends StatefulWidget {
  @override
  _ConstrainedBoxViewState createState() => _ConstrainedBoxViewState();
}

class _ConstrainedBoxViewState extends State<ConstrainedBoxView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ConstrainedBox"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Container(
        child: new SingleChildScrollView(
          child:new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("添加额外的限制条件（constraints）到child上",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
              Text("ConstrainedBox的布局行为非常简单，取决于设置的限制条件，而关于父子节点的限制因素生效优先级"),
              Text("继承关系",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
              Text("Object > Diagnosticable > DiagnosticableTree > Widget > RenderObjectWidget > SingleChildRenderObjectWidget > ConstrainedBox"),
              new ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 100.0,
                  maxWidth: 150.0,
                  maxHeight: 150.0,
                ),
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              ),
              new MarkdownBody(data: """
              new ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 100.0,
                  maxWidth: 150.0,
                  maxHeight: 150.0,
                ),
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              );
              """,),
              Text("例子也挺简单的，在一个宽高200.0的Container上添加一个约束最大最小宽高的ConstrainedBox，实际的显示中，则是一个宽高为150.0的区域。"),
              Text("构造函数"),
              MarkdownBody(data: """
              ConstrainedBox({
              Key key,
              @required this.constraints,//constraints：添加到child上的额外限制条件，其类型为BoxConstraints。BoxConstraints的作用是干啥的呢？其实很简单，就是限制各种最大最小宽高。说到这里插一句，double.infinity在widget布局的时候是合法的，也就说，例如想最大的扩展宽度，可以将宽度值设为double.infinity。
              Widget child
              })""",),
            ],
          )
        ),
      ),
    );
  }
}