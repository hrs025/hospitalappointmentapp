import 'package:doctorappointment/Hospital_module/Doctorlist.dart';

import '../User_module/screens/Home2Docprof.dart';
import '../User_module/Widget/Drawer.dart';
import '../User_module/widget/appbar.dart';
import 'package:flutter/material.dart';

class HSPhomepage extends StatefulWidget {
  const HSPhomepage({Key? key}) : super(key: key);

  @override
  State<HSPhomepage> createState() => _HSPhomepageState();
}

class _HSPhomepageState extends State<HSPhomepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawers(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Hospital Mod."),
      ),
      body: HSPdoclist(),
    );
  }
}
