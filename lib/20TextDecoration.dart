import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class TextFieldPageDecoration extends StatefulWidget {
  @override
  _MyTextFieldPageDecorationState createState() =>
      _MyTextFieldPageDecorationState();
}

class _MyTextFieldPageDecorationState extends State<TextFieldPageDecoration> {
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
              decoration: InputDecoration(
                icon: Icon(Icons.adb),
                fillColor: Colors.lightBlue[50],
                filled: true,
                prefix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.red,
                ),
                prefixIcon: Icon(Icons.person),
                // prefixText: "Name : ",
                labelText: "Nama lengkap",
                labelStyle: TextStyle(color: Colors.red),
                hintText: "Isi dengan nama lengkap",
                hintStyle: TextStyle(color: Colors.green),
                prefixStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
