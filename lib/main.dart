import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_example/login_page.dart';

void main() => runApp(MyApp());

// void main() {
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//       .then((_) {
//     runApp(MyApp());
//   });
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
