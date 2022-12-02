import 'package:doctorappointment/User_module/widget/appbar.dart';
import 'package:doctorappointment/User_module/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/screens/doctor_details.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:doctorappointment/User_module/widget/category.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:doctorappointment/User_module/widget/hspcard.dart';
import 'package:doctorappointment/User_module/services/auth.dart';
import 'Home.dart';
import 'Home2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home2()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 215, 215),
      drawer: Drawers(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Hospital Appointment"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'video',
            backgroundColor: Colors.blue,
          ),
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}


