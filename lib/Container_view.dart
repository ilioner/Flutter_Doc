import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';//markdown组件


class Container_view extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Contanier_viewState();
  }

}

class Contanier_viewState extends State<Container_view>{  
   
   String container_code1 = """
   ```
   Container({
      this.alignment,
      this.padding, //容器内补白，属于decoration的装饰范围
      Color color, // 背景色
      Decoration decoration, // 背景装饰
      Decoration foregroundDecoration, //前景装饰
      double width,//容器的宽度
      double height, //容器的高度
      BoxConstraints constraints, //容器大小的限制条件
      this.margin,//容器外补白，不属于decoration的装饰范围
      this.transform, //变换
      this.child,
    })
  ```
""";

 String container_code2 = """
   ```
   Container(
    margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外补白
    constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
    decoration: BoxDecoration(//背景装饰
        gradient: RadialGradient( //背景径向渐变
            colors: [Colors.red, Colors.orange],
            center: Alignment.topLeft,
            radius: .98
        ),
        boxShadow: [ //卡片阴影
          BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0
          )
        ]
    ),
    transform: Matrix4.rotationZ(.2), //卡片倾斜变换
    alignment: Alignment.center, //卡片内文字居中
    child: Text( //卡片文字
      "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
    ),
  );
  ```
""";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: new Text("Container"),
      ),
      body: new SingleChildScrollView(
          child: new Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft, //卡片内文字居中
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "本身不对应具体的RenderObject，它是DecoratedBox、ConstrainedBox、Transform、Padding、Align等widget的一个组合widget。所以我们只需通过一个Container可以实现同时需要装饰、变换、限制的场景。",
                style: new TextStyle(
                  fontSize: 20
                ),
              ),
              new Container(
                child: new MarkdownBody(data: container_code1),
              ),
              new Text("* 容器的大小可以通过width、height属性来指定，也可以通过constraints来指定，如果同时存在时，width、height优先。实际上Container内部会根据width、height来生成一个constraints"),
              new Text("* color和decoration是互斥的，实际上，当指定color时，Container内会自动创建一个decoration。\n\n",textAlign:TextAlign.left),
              new Text("示例"),
              new Container(
                margin: EdgeInsets.only(top: 50.0, left: 120.0,bottom: 80), //容器外补白
                constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
                decoration: BoxDecoration(//背景装饰
                    gradient: RadialGradient( //背景径向渐变
                        colors: [Colors.red, Colors.orange],
                        center: Alignment.topLeft,
                        radius: .98
                    ),
                    boxShadow: [ //卡片阴影
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0
                      )
                    ]
                ),
                transform: Matrix4.rotationZ(.2), //卡片倾斜变换
                alignment: Alignment.center, //卡片内文字居中
                child: Text( //卡片文字
                  "这是一个示例", style: TextStyle(color: Colors.white, fontSize: 40.0),
                ),
              ),
              new MarkdownBody(data: container_code2),
              new Text("margin与padding的区别",style: TextStyle(fontSize: 17)),
              new MarkdownBody(data: """
                Container(
                  margin: EdgeInsets.all(20.0), //容器外补白
                  color: Colors.orange,
                  child: Text("Hello world!"),
                ),
                Container(
                  padding: EdgeInsets.all(20.0), //容器内补白
                  color: Colors.orange,
                  child: Text("Hello world!"),
                ),
              """,),
              Container(
                margin: EdgeInsets.all(20.0), //容器外补白
                color: Colors.orange,
                child: Text("Hello world!"),
              ),
              Container(
                padding: EdgeInsets.all(20.0), //容器内补白
                color: Colors.orange,
                child: Text("Hello world!"),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}