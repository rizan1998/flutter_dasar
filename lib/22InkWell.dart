import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class InkwellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan membuat button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              color: Colors.amber,
              onPressed: () {},
              child: Text('Raised Button'),
              shape: StadiumBorder(),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2,
              child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        'My Button',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
