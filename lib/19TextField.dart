import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _MyTextFieldPageState createState() => _MyTextFieldPageState();
}

class _MyTextFieldPageState extends State<TextFieldPage> {
  TextEditingController controller = TextEditingController(text: "Nilai awal");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Text field'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              maxLength: 5,
              controller: controller,
              onChanged: (value) {
                setState(() {
                  print(controller.text);
                });
              },
              obscureText: true,
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
