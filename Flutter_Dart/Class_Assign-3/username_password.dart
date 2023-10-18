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
  TextEditingController uname_controller=TextEditingController();
  TextEditingController upass_controller=TextEditingController();
  String msg="";

  void _checklogin(){
    String username=uname_controller.text;
    String password=upass_controller.text;

    if(username=="Hitesh@gmail.com" && password=="hue69") {
      setState(() {
        msg = "Login Successfull :)";
      });
    }
    else{
      setState(() {
        msg="Invalid Username or Password :(";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login App"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
              child:TextField(
            controller: uname_controller,
            decoration: InputDecoration(labelText: "Username",border: OutlineInputBorder()),
            style: TextStyle(fontSize: 25),
          )
          ),
          Container(
            padding: EdgeInsets.all(10),
          child:TextField(
            controller: upass_controller,
            decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()),
            obscureText: true,
            style: TextStyle(fontSize: 25),
          ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10,0,10,0),
              child:ElevatedButton(onPressed: _checklogin, child: Text("Login"), style:  ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent, padding: EdgeInsets.all(15),
          ))
          ),
          Text(msg,style:TextStyle(fontSize: 25))

        ],
      ),

    );

  }
}
