import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'Animation Demo',
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const Divider(thickness: 10,
                  color: Colors.amber,
                  indent: 15,
                  endIndent: 15,
                ),
                _AnimCntnrWdt(),
                Divider(thickness: 10,)
              ],

            ),
          ),
        ),
      ));
}

class _AnimCntnrWdt extends StatefulWidget{
  // @overide
  _AnimCntnrWdtState createState() => _AnimCntnrWdtState();
}

class _AnimCntnrWdtState extends State<_AnimCntnrWdt>{
  double _height =100.0;
  double _width = 100.0;
  void _increaseWidth(){
    setState(() {
      _width= _width>=320.0 ? 100.0 : _width += 50.0;
      _height= _height >= 400.0 ? 100.0 : _height += 75.0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        AnimatedContainer(duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          color: Colors.amber,
          height: _height,
          width: _width,
          child: ElevatedButton(
            child: Text('Tap To Grow'),
            onPressed: (){
              _increaseWidth();
            },
          ),
        )
      ],
    );
  }
}

