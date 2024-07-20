import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';
import 'package:navigation_example/second_page.dart';

import 'package:navigation_example/17app_bar_gradasi.dart';
import 'package:navigation_example/18card.dart';
import 'package:navigation_example/19TextField.dart';
import 'package:navigation_example/20TextDecoration.dart';
import 'package:navigation_example/21MediaQuery.dart';
import 'package:navigation_example/22InkWell.dart';
import 'package:navigation_example/23Opacity.dart';
import 'package:navigation_example/24LoginPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            RaisedButton(
              child: Text('Go to main page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20), // Menambahkan jarak antara tombol
            butttonPage(
              context,
              '17 AppBar Gradasi',
              AppBarGradasi(),
            ),
            SizedBox(height: 20), // Menambahkan jarak antara tombol
            butttonPage(
              context,
              '18 Card',
              CardPage(),
            ),
            SizedBox(height: 20), // Menambahkan jarak antara tombol
            butttonPage(
              context,
              '19 Text Field',
              TextFieldPage(),
            ),
            SizedBox(height: 20), // Menambahkan jarak antara tombol
            butttonPage(
              context,
              '20 Textfield decoration',
              TextFieldPageDecoration(),
            ),
            SizedBox(height: 20), // Menambahkan jarak antara tombol
            butttonPage(
              context,
              '21 Media Query',
              MediaQueryPage(),
            ),
            SizedBox(height: 20),
            butttonPage(
              context,
              '22 Inkwell',
              InkwellPage(),
            ),
            SizedBox(height: 20),
            butttonPage(
              context,
              '23 Opacity',
              OpacityPage(),
            ),
            SizedBox(height: 20),
            butttonPage(
              context,
              '24 Login Page',
              LoginPage(),
            ),
            SizedBox(height: 20),
            butttonPage(
              context,
              '25 Hero Animation',
              LoginPage(),
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton butttonPage(BuildContext context, String text, Widget page) {
    return RaisedButton(
      child: Text(text),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ), // Ganti dengan halaman tujuan yang sesuai
        );
      },
    );
  }
}
