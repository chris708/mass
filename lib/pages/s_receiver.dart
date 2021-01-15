import 'package:flutter/material.dart';

class SelectReceiver extends StatefulWidget {
  @override
  _SelectReceiverState createState() => _SelectReceiverState();
}

class _SelectReceiverState extends State<SelectReceiver> {
  bool _checked1 = false;
  bool _checked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Select Receiver"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
              title: Text("Receiver 1"),
              secondary: Icon(Icons.delete),
              controlAffinity: ListTileControlAffinity.leading,
              value: _checked1,
              onChanged: (bool value) {
                setState(() {
                  _checked1=value;
                });
              },
              activeColor: Colors.amber,
              checkColor: Colors.black,
            ),
            CheckboxListTile(
              title: Text("Receiver 2"),
              secondary: Icon(Icons.delete),
              controlAffinity: ListTileControlAffinity.leading,
              value: _checked2,
              onChanged: (bool value) {
                setState(() {
                  _checked2=value;
                });
              },
              activeColor: Colors.amber,
              checkColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
