import 'package:flutter/material.dart';

class SendEmail extends StatefulWidget {
  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Send Email'),
      ),
      body: MyFifthWidget(),
    );
  }
}

class MyFifthWidget extends StatefulWidget {
  MyFifthWidget({Key key}) : super(key: key);
  @override
  _MyFifthWidgetState createState() => _MyFifthWidgetState();
}

class _MyFifthWidgetState extends State<MyFifthWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 155.0,
        width: 320.0,
        padding: EdgeInsets.only(top: 25.0),
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Click 'SEND' to send emails to everyone",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      color: Colors.grey[400],
                      onPressed: () {
                        Navigator.pushNamed(context, '/sender');
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                      },
                      child: Text(
                        'SEND',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.teal[600],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
