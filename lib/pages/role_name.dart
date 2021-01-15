import 'package:flutter/material.dart';

class RoleName extends StatefulWidget {
  @override
  _RoleNameState createState() => _RoleNameState();
}

class _RoleNameState extends State<RoleName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Role Name',
        ),
      ),
      body: MyFirstWidget(),
    );
  }
}
class MyFirstWidget extends StatefulWidget {
  @override
  MyFirstWidget({Key key}) : super(key: key);
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
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
              child: Text("Role 1:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '               Name of Role 1',
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
              child: Text("Role 2:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '               Name of Role 2',
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
              child: Text("Role 3:", style: TextStyle(
                fontSize: 20.0,
              ),
              ),
            ),
            Container(
              width: 200.0,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: '               Name of Role 3',
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
                        Navigator.pushNamed(context, '/a_roles');
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
