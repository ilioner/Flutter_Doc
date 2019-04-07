import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Fitted_BoxView extends StatefulWidget {
  @override
  _Fitted_BoxViewState createState() => new _Fitted_BoxViewState();
}

class _Fitted_BoxViewState extends State<Fitted_BoxView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Fitted_box"),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text("主要做了两件事情，缩放（Scale）以及位置调整（Position）",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            new Text("FittedBox会在自己的尺寸范围内缩放并且调整child位置，使得child适合其尺寸。做过移动端的，可能会联想到ImageView控件，它是将图片在其范围内，按照规则，进行缩放位置调整。"),
            new Text("FittedBox的布局行为还算简单，官方没有给出说明，我在这里简单说一下。由于FittedBox是一个容器，需要让其child在其范围内缩放，因此其布局行为分两种情况："),
            new Text("1.如果外部有约束的话，按照外部约束调整自身尺寸，然后缩放调整child，按照指定的条件进行布局"),
            new Text("2.如果没有外部约束条件，则跟child尺寸一致，指定的缩放以及位置属性将不起作用。"),
            new Text("继承关系",style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
            new Text("   Object > Diagnosticable > DiagnosticableTree > Widget > RenderObjectWidget > SingleChildRenderObjectWidget > FittedBox"),
            new Text("示例",style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
            new Container(
              color: Colors.amberAccent,
              width: 300.0,
              height: 300.0,
              child: new FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
                child: new Container(
                  color: Colors.red,
                  child: new Text("FittedBox"),
                ),
              ),
            ),
            new MarkdownBody(data: """
            new Container(
              color: Colors.amberAccent,
              width: 300.0,
              height: 300.0,
              child: new FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
                child: new Container(
                  color: Colors.red,
                  child: new Text("FittedBox"),
                ),
              ),
            )
            """,),
            new Text("源码解析",style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
            new MarkdownBody(data: """
              const FittedBox({
                Key key,
                this.fit: BoxFit.contain,
                this.alignment: Alignment.center,
                Widget child,
              })
              """,),
            new Text("fit：缩放的方式，默认的属性是BoxFit.contain，child在FittedBox范围内，尽可能的大，但是不超出其尺寸。这里注意一点，contain是保持着child宽高比的大前提下，尽可能的填满，一般情况下，宽度或者高度达到最大值时，就会停止缩放。"),
            Image.network("https://upload-images.jianshu.io/upload_images/177500-8f67057a8b2ac4d5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/675/format/webp",width: MediaQuery.of(context).size.width,),
            new Text("alignment：对齐方式，默认的属性是Alignment.center，居中显示child。"),
          ],
        ),
      ),
    ),
    );
  }
}