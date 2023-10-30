import 'package:flutter/material.dart';
import 'firstRoute.dart';

class SecondRoute extends StatelessWidget{
  final String msg;
  SecondRoute({super.key,required this.msg});
  @override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(msg,style:TextStyle(fontSize:20)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppGet()))
            }, child: Text("Image Page"),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);}, child: Text("Go Back"),)
          ],
        ),
      ),
    );
  }
}
