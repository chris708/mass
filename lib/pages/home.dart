import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text("Event Manager", style: TextStyle(
            fontFamily: "Lobster",
            color: Colors.grey[300],
            fontSize: 40.0,
          ),
          ),
        ),
      ),
      body: MyFourthWidget(),
    );
  }
}

class MyFourthWidget extends StatefulWidget {
  @override
  _MyFourthWidgetState createState() => _MyFourthWidgetState();
}

class _MyFourthWidgetState extends State<MyFourthWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('images/party.png'),
          ),
        ),
        Container(
          child: Text("Add an Event", style: TextStyle(
            color: Colors.teal,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Material(
            color: Colors.grey[100],
            child: Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.teal,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/s_details');
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

