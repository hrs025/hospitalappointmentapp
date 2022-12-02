import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  String title;
  TopBar(this.title);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('${this.widget.title}',style: TextStyle(color: Colors.black),),
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255,148, 215, 215),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.notifications_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/notify');
              },
            ),
          ),
        ]);
  }
}
