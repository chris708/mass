import 'package:flutter/material.dart';
import 'package:mass/db_keeper.dart';
import 'classes_used.dart';
import 'package:mass/global_vars.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Assign Roles'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(role1.name),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_receiver1');
                      },
                      child: Text(
                        'Create Receiver',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/select_receiver');
                      },
                      child: Text('Select Receiver'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(role2.name),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_receiver2');
                      },
                      child: Text(
                        'Create Receiver',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/select_receiver');
                      },
                      child: Text('Select Receiver'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(role3.name),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create_receiver3');
                      },
                      child: Text(
                        'Create Receiver',
                      ),
                    ),
                    SizedBox(width: 10.0),
                    RaisedButton(
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/select_receiver');
                      },
                      child: Text('Select Receiver'),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/r_body');
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
