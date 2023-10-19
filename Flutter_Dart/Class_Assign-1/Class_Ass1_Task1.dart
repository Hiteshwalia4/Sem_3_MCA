

class MyApp extends StatelessWidget{
//This widget is the rest of your application.
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    home: Scaffold(
    appBar: AppBar(
    title: Text("NRR Application"),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text ('My Name is : Hitesh Walia', style: TextStyle(fontSize: 18), ),
      Text('My Roll No is 003',style: TextStyle(fontSize: 18)),
      Text( 'My Semester is :3rd Sem', style: TextStyle(fontSize: 18)),
      Text('My Subject is Computer Science Engineering', style: TextStyle(fontSize: 18)),
    ],
),
),
),
);
}
}


// Method2
import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  title: "Flutter Demo",
  home: Scaffold(
   appBar: AppBar(
     title: Text("NRR Application"),
   ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text ('My Name is : Hitesh Walia', style: TextStyle(fontSize: 18), ),
          Text('My Roll No is 003',style: TextStyle(fontSize: 18)),
          Text( 'My Semester is :3rd Sem', style: TextStyle(fontSize: 18)),
          Text('My Subject is Computer Science Engineering', style: TextStyle(fontSize: 18)),
        ],
      ),
    ),
  ),
)
);

