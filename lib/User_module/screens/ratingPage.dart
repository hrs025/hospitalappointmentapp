import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/rating.dart';

class RatingsPage extends StatefulWidget {
  @override
  _RatingsPage createState() => _RatingsPage();
}

class _RatingsPage extends State<RatingsPage> {
  int? _rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            backgroundColor: Color.fromARGB(255,148, 215, 215),
            centerTitle: true,
            title: Text("Rating",style: TextStyle(color: Colors.black))
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a Feedback or any comments',
                  ),
                ),
              ),
              Rating((rating) {
                setState(() {
                  _rating = rating;
                });
              }, 5),
              SizedBox(
                  height: 44,
                  child: (_rating != null && _rating != 0)
                      ? Text("You selected $_rating rating",
                          style: TextStyle(fontSize: 18))
                      : SizedBox.shrink()),
              ElevatedButton(
                onPressed: () {},
                child: Text("Submit",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2, color: Colors.white)),
                style: OutlinedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        ));
  }
}
