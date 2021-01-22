import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Email Sent'),
      ),
      body: MySixthWidget(),
    );
  }
}

class MySixthWidget extends StatefulWidget {
  MySixthWidget({Key key}) : super(key: key);
  @override
  _MySixthWidgetState createState() => _MySixthWidgetState();
}

class _MySixthWidgetState extends State<MySixthWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "EMAIL HAS BEEN SUCCESSFULLY SENT",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
