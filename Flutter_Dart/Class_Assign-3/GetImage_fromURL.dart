import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: Home());
  }
}
class Home extends StatefulWidget {
  const Home({Key?key}):super(key:key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImageController=TextEditingController();
  String textImg="No Value Entered";
  void _setImg() {
    setState(() {
      textImg=ImageController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ImageExampleGetfromURL"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(labelText: "Get Image"),
              controller: ImageController,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(onPressed: _setImg,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
              child:Text("GetImage")),
          const SizedBox(
            height: 20,
          ),
          Text(textImg),
          Image.network(textImg,height:300, width:300,),
          // Image.network("", height: 200, width:200),
        ],
      ),
    );
  }
}
