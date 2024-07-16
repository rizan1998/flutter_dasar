import 'package:flutter/material.dart';

class MainPageOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "23 Custom Card Example",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 5,
                child: Stack(children: [
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP.nYZbFdnd5Kq1M9esyAXfXwHaHa?rs=1&pid=ImgDetMain"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1721023672487-906b07479bff?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Beatiful Sunset at Paddy Field",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFF56D5D), fontSize: 25),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors
                                  .blue.shade50, // Set background color here
                              borderRadius: BorderRadius.circular(
                                  10.0), // Set border radius here
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Posted on ",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  "June 18, 2019",
                                  style: TextStyle(
                                      color: Color(0xFFF56D5D), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(
                                flex: 10,
                              ),
                              Icon(Icons.thumb_up,
                                  size: 18, color: Colors.grey),
                              // icon
                              Spacer(flex: 1),
                              Text("99", style: TextStyle(color: Colors.grey)),
                              // text
                              Spacer(flex: 5),
                              Icon(Icons.comment, size: 18, color: Colors.grey),
                              // icon
                              Spacer(
                                flex: 1,
                              ),
                              Text("888", style: TextStyle(color: Colors.grey)),
                              // text
                              Spacer(flex: 10),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
