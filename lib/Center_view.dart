import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';//markdown组件

class Center_View extends StatefulWidget {
  @override
  _Center_ViewState createState() => new _Center_ViewState();
}

class _Center_ViewState extends State<Center_View>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(vsync: this);
  }
  
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Center布局"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Center(
        child: new SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Center布局"),
              new Text("Center继承自Align，只不过是将alignment设置为Alignment.center，其他属性例如widthFactor、heightFactor，布局行为，都与Align完全一样"),
              new Text("Center源码如下，没有设置alignment属性，是因为Align默认的对齐方式就是居中。"),
              new MarkdownBody(data: """
              class Center extends Align {
                /// Creates a widget that centers its child.
                const Center({ Key key, double widthFactor, double heightFactor, Widget child })
                  : super(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: child);
              }
              """)
            ],
          ),
        ),
      ),
    );
  }
}