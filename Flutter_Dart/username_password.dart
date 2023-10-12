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
       ),
       body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             TextField(
               controller: uname_controller,
               decoration: InputDecoration(labelText: "Username"),
               style: TextStyle(fontSize: 25),
             ),
             TextField(
               controller: upass_controller,
               decoration: InputDecoration(labelText: "Password"),
               obscureText: true,
               style: TextStyle(fontSize: 25),
             ),
          ElevatedButton(onPressed: _checklogin, child: Text("Login"), style:  ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent, padding: EdgeInsets.all(15),
          )),
          Text(msg,style:TextStyle(fontSize: 25))

           ],
         ),

     );

  }
}
