import 'package:flutter/material.dart';
import 'package:sport_news/model/user_model.dart';

class PageGetValue extends StatefulWidget {

  final UserModel value;

  PageGetValue({Key key, this.value}) : super(key : key);
  @override
  _PageGetValueState createState() => _PageGetValueState();
}

class _PageGetValueState extends State<PageGetValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Passing Data'),
        backgroundColor: Colors.green,
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              Padding(
                child: new Text(
                  'Passed Valye',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 20.0),
              ),

              Padding(
                child: new Text(
                  'Username : ' + widget.value.username,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(10.0),
              ),
              
              Padding(
                child: new Text(
                  'Email : ' + widget.value.email,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}