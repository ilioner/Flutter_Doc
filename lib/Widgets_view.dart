import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'BaseView_fr.dart';
import 'TextTool.dart';
import 'Widgets/Text_view.dart';

class Widgets_view extends StatefulWidget {
  @override
  _Widgets_viewState createState() => new _Widgets_viewState();
}

class _Widgets_viewState extends State<Widgets_view> {

  List<String> imagesUrl = new List<String>();
  List<String> titles = new List<String>();
  List<String> des = new List<String>();
  List<Widget> widgets = new List<Widget>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagesUrl.add("images/Text.png");
    titles.add("Text组件");
    des.add("单一格式的文本");
    widgets.add(new Text_view());

    imagesUrl.add("images/Button.png");
    titles.add("Button组件");
    des.add("各种按钮");
    widgets.add(new Text_view());


    imagesUrl.add("images/Text.png");
    titles.add("Text组件");
    des.add("单一格式的文本");
    widgets.add(new Text_view());


    imagesUrl.add("images/Text.png");
    titles.add("Text组件");
    des.add("单一格式的文本");
    widgets.add(new Text_view());


    imagesUrl.add("images/Text.png");
    titles.add("Text组件");
    des.add("单一格式的文本");
    widgets.add(new Text_view());

  }

  Widget _getItemWithIndex(int index){
    return new GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>widgets[index],
        ));
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagesUrl[index],fit: BoxFit.fitWidth),
            Text(titles[index]),
            Text(des[index])
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0
        ),
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index){
          return _getItemWithIndex(index);
        },
      )
    );
  }
}