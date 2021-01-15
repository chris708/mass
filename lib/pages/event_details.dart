import 'package:flutter/material.dart';

class EventDetail extends StatefulWidget {
  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Event Details',
        ),
      ),
      body: MySecondWidget(),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  MySecondWidget({Key key}) : super(key: key);
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
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
              child: Text("Event name:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '                Birthday party',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Event date:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '                   03.02.2021',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Event venue:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '     abc building, xyz street, city',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Number of roles:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '                            3',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
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
                        Navigator.pushNamed(context, '/r_name');
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
