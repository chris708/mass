import 'package:flutter/material.dart';
import 'package:mass/pages/classes_used.dart';
import 'package:mass/db_keeper.dart';

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
  RoleDetails role1 = new RoleDetails();
  RoleDetails role2 = new RoleDetails();
  RoleDetails role3 = new RoleDetails();
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
                "Role 1:",
                style: TextStyle(
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
                  role1.id = '1';
                  role1.name = value;
                  role1.receiver1Name = 'x';
                  role1.receiver1Email = 'x';
                  role1.receiver1Phone = 'x';
                  role1.receiver2Name = 'x';
                  role1.receiver2Email = 'x';
                  role1.receiver2Phone = 'x';
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Role 2:",
                style: TextStyle(
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
                  role2.id = '2';
                  role2.name = value;
                  role2.receiver1Name = 'x';
                  role2.receiver1Email = 'x';
                  role2.receiver1Phone = 'x';
                  role2.receiver2Name = 'x';
                  role2.receiver2Email = 'x';
                  role2.receiver2Phone = 'x';
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Role 3:",
                style: TextStyle(
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
                  role3.id = '3';
                  role3.name = value;
                  role3.receiver1Name = 'x';
                  role3.receiver1Email = 'x';
                  role3.receiver1Phone = 'x';
                  role3.receiver2Name = 'x';
                  role3.receiver2Email = 'x';
                  role3.receiver2Phone = 'x';
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
                        print(role1.receiver2Name);
                        createRoleTable();
                        insertRole(role1);
                        insertRole(role2);
                        insertRole(role3);
                        ViewRoles();
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
