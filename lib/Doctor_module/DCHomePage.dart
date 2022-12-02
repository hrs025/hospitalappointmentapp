import '../User_module/screens/Home2Docprof.dart';
import '../User_module/Widget/Drawer.dart';
import '../User_module/widget/appbar.dart';
import 'dchmlist.dart';
import 'package:flutter/material.dart';

class dchomepage extends StatefulWidget {
  const dchomepage({Key? key}) : super(key: key);

  @override
  State<dchomepage> createState() => _dchomepageState();
}

class _dchomepageState extends State<dchomepage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    dchome(),
    Center(child: Column(
      children: [
        button('connect with chat',Icon(Icons.chat,size: 30,),'/chat'),
        button3('connect with call',Icon(Icons.call,size: 30,)),
        button1('connect with video',Icon(Icons.video_call,size: 30,),1),
      ],
    ),),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Doctor Mod."),
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
