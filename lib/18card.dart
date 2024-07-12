import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.account_box, 'Account'),
            buildCard(Icons.adb, 'Serangga android'),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
        elevation: 5,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Icon(iconData),
            ),
            Text(text),
          ],
        ));
  }
}
