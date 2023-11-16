import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key ? key, required this.index,}) :super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height:200.0,
      child:
      Card(
        elevation: 10.0,
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        shape: StadiumBorder(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset('img-src/1.jpg',width:90,height:90),
            Text(
              'Hitesh Walia',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48.0,
                color: Colors.orange,
              ),
            ),
            Text('MCA, BCIIT',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.pink,fontSize: 20.0,fontWeight: FontWeight.bold),
            ),
            Text(
              '2022 batch',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

          ],
        ),
      ),

    );
  }
}
