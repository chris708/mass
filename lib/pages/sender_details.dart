import 'package:flutter/material.dart';
import 'package:mass/pages/classes_used.dart';
import 'dart:async';
import 'package:mass/db_keeper.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SenderDetail extends StatefulWidget {
  @override
  _SenderDetailState createState() => _SenderDetailState();
}

class _SenderDetailState extends State<SenderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Sender Details',
        ),
      ),
      body: MyThirdWidget(),
    );
  }
}

class MyThirdWidget extends StatefulWidget {
  MyThirdWidget({Key key}) : super(key: key);
  @override
  _MyThirdWidgetState createState() => _MyThirdWidgetState();
}

class _MyThirdWidgetState extends State<MyThirdWidget> {
  final _formKey = GlobalKey<FormState>();
  SenderDetails sender1 = new SenderDetails();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Enter your name:",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '                    john steve',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  sender1.name = value;
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Enter your email:",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '               xyz@gmail.com',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  sender1.email = value;
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Enter your contact no:",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '              +91 9374538234',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  sender1.phone = value;
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        //edit here

                        print(sender1.name);
                        print(sender1.email);
                        print(sender1.phone);

                        databaseInit();
                        Navigator.pushNamed(context, '/e_details');
                      }
                    },
                    child: Text('Next'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
