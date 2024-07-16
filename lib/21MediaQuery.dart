import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan MediaQuery"),
        ),
        // body: Container(width: MediaQuery.of(context).size.width /2, height: MediaQuery.of(context).size.height /2, color: Colors.blue),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer,
              )
            : Row(
                children: generateContainer,
              ));
  }

  List<Widget> get generateContainer {
    return [
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.blue, width: 100, height: 100),
    ];
  }
}
