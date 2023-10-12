// We also need to add our image folder which is "img_src" in our case in the assests section 
//   in pubspec.yaml file to fetch images from "img_src" folder.

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold( appBar: AppBar(title: Text("Image Demo"),),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset("img_src/1.jpg", width: 300, height: 300),
      Image.asset("img_src/2.jpg", width: 300, height: 300),
    ],
    ),
    ),
    ),
    );
  }
}
