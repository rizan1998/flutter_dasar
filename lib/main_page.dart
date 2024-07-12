import 'package:flutter/material.dart';
import 'package:navigation_example/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('main page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Go to second page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
          ),
        ));
  }
}
