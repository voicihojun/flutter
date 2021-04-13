import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  WidgetApp({Key key}): super(key: key);

  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {
  List _buttonList = ['add', 'substract', 'multiply', 'divide'];
  List<DropdownMenuItem<String>> _dropDownMenuItems = new List();
  String buttonText;
  String sum ='';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    for(var item in _buttonList) {
      _dropDownMenuItems.add(DropdownMenuItem(value: item, child: Text(item)));
    }
    buttonText = _dropDownMenuItems[0].value;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding:EdgeInsets.all(15),
                child: Text('flutter'),
              ),
              Padding(
                padding:EdgeInsets.only(left:20, right:20),
                child: TextField(
                    keyboardType: TextInputType.number,
                    controller:value1
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left:20, right:20),
                child: TextField(
                    keyboardType: TextInputType.number,
                    controller:value2
                ),
              ),
              Padding(
                padding:EdgeInsets.all(15),
                child: Text(
                  'result : $sum',
                  style: TextStyle(fontSize: 20),
                )
              ),
              Padding(
                padding:EdgeInsets.all(15),
                child: RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add),
                        Text(buttonText)
                      ],
                    ),
                    color: Colors.amber,
                    onPressed:(){
                      setState(() {
                        var value1Int = double.parse(value1.value.text);
                        var value2Int = double.parse(value2.value.text);
                        var result;
                        if (buttonText == 'add') {
                          result = value1Int + value2Int;
                        } else if (buttonText == 'substract') {
                          result = value1Int - value2Int;
                        } else if (buttonText == 'multiply') {
                          result = value1Int * value2Int;
                        } else if (buttonText == 'divide') {
                          result = value1Int / value2Int;
                        }
                        sum = result.toString();
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: DropdownButton(
                  items: _dropDownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      buttonText = value;
                  });
                }, value: buttonText,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
