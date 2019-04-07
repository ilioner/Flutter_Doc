import 'package:flutter/material.dart';
import 'Container_view.dart';
import 'Padding_View.dart';
import 'Center_view.dart';
import 'Align_view.dart';
import 'Fitted_boxView.dart';
import 'AspectRatioView.dart';
import 'ConstrainedBoxView.dart';
import 'Baseline_view.dart';
import 'FractionallySizedBox_view.dart';
import 'IntrinsicHeight_view.dart';
import 'IntrinsicWidth_view.dart';
import 'LimitedBox_view.dart';
import 'Offstage_view.dart';
import 'OverflowBox_view.dart';
import 'SizedBox_view.dart';
import 'Expanded_view.dart';
import 'Flexible_view.dart';
import 'SizedOverflowBox_view.dart';
import 'Transform_view.dart';
import 'CustomSingleChildLayout_view.dart';
import 'Row_view.dart';
import 'Column_view.dart';
import 'Stack_view.dart';
import 'IndexedStack_view.dart';
import 'Flow_view.dart';
import 'Table_view.dart';
import 'Wrap_view.dart';
import 'ListBody_view.dart';
import 'ListView_view.dart';
import 'CustomMultiChildLayout_view.dart';
import 'Positioned_view.dart';

class layout_view extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new layout_state();
  }
}

class layout_state extends State<layout_view>{

  List<String>  items = new List<String>();
  List<String>  subItems = new List<String>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.add("Container。");
    items.add("Padding");
    items.add("Center");
    items.add("Align");
    items.add("FittedBox");
    items.add("AspectRatio");
    items.add("ConstrainedBox");
    items.add("Baseline");
    items.add("FractionallySizedBox");
    items.add("IntrinsicHeight");
    items.add("IntrinsicWidth");
    items.add("LimitedBox");
    items.add("Offstage");
    items.add("OverflowBox");
    items.add("SizedBox");
    items.add("Expanded");
    items.add("Flexible");
    items.add("SizedOverflowBox");
    items.add("Transform");
    items.add("CustomSingleChildLayout");
    items.add("Row");
    items.add("Column");
    items.add("Stack");
    items.add("IndexedStack");
    items.add("Flow");
    items.add("Table");
    items.add("Wrap");
    items.add("ListBody");
    items.add("ListView");
    items.add("CustomMultiChildLayout");
    items.add("Positioned");

    subItems.add("一个拥有绘制、定位、调整大小的 widget。");
    subItems.add("一个widget, 会给其子widget添加指定的填充");
    subItems.add("将其子widget居中显示在自身内部的widget");
    subItems.add("一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小。");
    subItems.add("按自己的大小调整其子widget的大小和位置。");
    subItems.add("一个widget，试图将子widget的大小指定为某个特定的长宽比");
    subItems.add("对其子项施加附加约束的widget");
    subItems.add("根据子项的基线对它们的位置进行定位的widget。");
    subItems.add("一个widget，它把它的子项放在可用空间的一小部分。");
    subItems.add("一个widget，它将它的子widget的高度调整其本身实际的高度");
    subItems.add("一个widget，它将它的子widget的宽度调整其本身实际的宽度");
    subItems.add("一个当其自身不受约束时才限制其大小的盒子");
    subItems.add("一个布局widget，可以控制其子widget的显示和隐藏");
    subItems.add("对其子项施加不同约束的widget，它可能允许子项溢出父级");
    subItems.add("一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小。");
    subItems.add("Row、Column、Flex会被Expanded撑开，充满主轴可用空间。");
    subItems.add("让子组件有填充可用空间的能力");
    subItems.add("一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出。");
    subItems.add("在绘制子widget之前应用转换的widget。");
    subItems.add("一个自定义的拥有单个子widget的布局widget");
    subItems.add("在水平方向上排列子widget的列表。");
    subItems.add("在垂直方向上排列子widget的列表。");
    subItems.add("可以允许其子widget简单的堆叠在一起");
    subItems.add("从一个子widget列表中显示单个孩子的Stack");
    subItems.add("一个实现流式布局算法的widget");
    subItems.add("为其子widget使用表格布局算法的widget");
    subItems.add("可以在水平或垂直方向多行显示其子widget。");
    subItems.add("一个widget，它沿着一个给定的轴，顺序排列它的子元素");
    subItems.add("可滚动的列表控件。ListView是最常用的滚动widget，它在滚动方向上一个接一个地显示它的孩子。在纵轴上，孩子们被要求填充ListView。");
    subItems.add("使用一个委托来对多个孩子进行设置大小和定位的小部件");
    subItems.add("Positioned可以给子widget定位");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget divider=Divider(color: Colors.black12);//分割线
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("布局一览"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: new ListView.separated(
        itemCount: this.items.length,
        separatorBuilder: (BuildContext context, int index){
          return divider;
        },
        itemBuilder: (BuildContext context,int index){
          
          return new ListTile(
              title: new Text(this.items[index]),
              subtitle: new Text(this.subItems[index]),
              onTap: (){
                if (index == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Container_view()));
                }else if (index == 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Padding_View()));
                }else if (index == 2) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Center_View()));
                }else if(index == 3){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Align_view()));
                }else if(index == 4){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Fitted_BoxView()));
                }else if(index == 5){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new AspectRatio_view()));
                }else if(index == 6){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new ConstrainedBoxView()));
                }else if(index == 7){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Baseline_View()));
                }else if(index == 8){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new FractionallySizedBox_view()));
                }else if(index == 9){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new IntrinsicHeight_view()));
                }else if(index == 10){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new IntrinsicWidth_view()));
                }else if(index == 11){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new LimitedBox_view()));
                }else if(index == 12){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Offstage_view()));
                }else if(index == 13){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new OverflowBox_view()));
                }else if(index == 14){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new SizedBox_view()));
                }else if(index == 15){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Expanded_view()));
                }else if(index == 16){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Flexible_view()));
                }else if(index == 17){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new SizedOverflowBox_view()));
                }else if(index == 18){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Transform_view()));
                }else if(index == 19){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new CustomSingleChildLayout_view()));
                }else if(index == 20){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Row_view()));
                }else if(index == 21){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Column_view()));
                }else if(index == 22){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Stack_view()));
                }else if(index == 23){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new IndexedStack_view()));
                }else if(index == 24){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Flow_view()));
                }else if(index == 25){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Table_view()));
                }else if(index == 26){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Wrap_view()));
                }else if(index == 27){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new ListBody_view()));
                }else if(index == 28){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new ListView_view()));
                }else if(index == 29){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new CustomMultiChildLayout_view()));
                }else if(index == 30){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Positioned_view()));
                }
              },
          );

        }
      ));
  }

}