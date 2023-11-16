import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(GridApp());

class GridApp extends StatelessWidget{
  GridApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: GridViewBuilderWidget(),
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget{
  GridViewBuilderWidget({
    Key?key,
}) : super(key: key);

  @override
  Widget build(BuildContext context){
    List<IconData> _iconList= GridIcons().getIconList();
    return GridView.builder(
        itemCount: 10, padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
        itemBuilder: (BuildContext context, int index){
          print("_buildGridViewBuilder $index");
          return Card(
            color: Colors.lightGreen.shade50,
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _iconList[index], size: 30, color: Colors.indigo,
                  ),
                  Divider(),
                  Text(
                    "Index $index", textAlign: TextAlign.center,
                    style: TextStyle( fontSize:16 )
                    ),
                ],
              ),
          onTap: (){
              print("$index");
          },
            ),
          );
        }
    );
  }
}

class GridIcons{
  List<IconData> iconList=[];
  List<IconData> getIconList(){
    iconList
      ..add(Icons.access_alarm)
      ..add(Icons.directions_bike)
      ..add(Icons.flight)
      ..add(Icons.cake)
      ..add(Icons.change_history)
      ..add(Icons.card_giftcard)
      ..add(Icons.face)
      ..add(Icons.star)
      ..add(Icons.headphones_battery)
      ..add(Icons.directions_walk);

      return iconList;
  }
}
