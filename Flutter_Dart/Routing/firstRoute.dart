import 'secondRoute.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget{
  FirstRoute({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("First Route"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Route"),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>
                SecondRoute(msg:"Welcome to Navigator Widget")),);
          },
        ),
      ),
    );
  }
}
