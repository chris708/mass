import 'package:flutter/material.dart';
import 'package:mass/pages/classes_used.dart';
import 'package:mass/db_keeper.dart';
import 'package:mass/global_vars.dart';

class ChooseLocation1 extends StatefulWidget {
  @override
  _ChooseLocation1State createState() => _ChooseLocation1State();
}

class _ChooseLocation1State extends State<ChooseLocation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Create Receiver'),
      ),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

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
                "Enter receivers name:",
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
                  receiver1.id = '1';
                  receiver1.name = value;
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Enter receivers email:",
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
                  receiver1.email = value;
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Enter receivers contact no:",
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
                  receiver1.phone = value;
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
                        // Process data.
                        createReceiverTable();
                        insertReceiver(receiver1);
                        ViewReceiver();
                        Navigator.pushNamed(context, '/a_roles');
                      }
                    },
                    child: Text('Create'),
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
