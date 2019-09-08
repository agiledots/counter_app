import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    _onPressed() {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => SecondRoute()
      ));
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Route'),
          onPressed: _onPressed,
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Close Route'),
          onPressed: () {
            //
            print("close route");
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}