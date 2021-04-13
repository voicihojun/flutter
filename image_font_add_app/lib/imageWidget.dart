import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageWidgetApp();
  }
}

class _ImageWidgetApp extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Widget'),),
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset('image/apple.jpg', width: 300, height: 200, fit: BoxFit.fill),
              Text('Hello Flutter',
              style: TextStyle(fontFamily: 'KR-Morning', fontSize: 30, color: Colors.blue),)
            ]
          )
        )
      )
    );
  }
}