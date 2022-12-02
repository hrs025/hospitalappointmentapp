import 'package:doctorappointment/User_module/model/appointment.dart';
import 'package:doctorappointment/User_module/screens/booking.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/drawer.dart';
import 'package:doctorappointment/User_module/widget/Appoiments_item.dart';
import 'package:doctorappointment/User_module/provider/Appointment_provider.dart';
import 'package:provider/provider.dart';
import 'package:doctorappointment/User_module/screens/appointments.dart';

class Appoiments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppoimentsState();
}

class AppoimentsState extends State<Appoiments> {
  @override
  Widget build(BuildContext context) {
    List<appoiment> x =
        Provider.of<AppoimentProvider>(context, listen: false).appoimentlist;

    final children = <Widget>[];
    for (var i = 0; i < x.length; i++) {
      children.add(MyActivity(
        glbimg,
        glbName,
        glbcategotry,
        x[i].status,
        glbtime,
        glbdate,
      ));
    }
    {
      Size size = MediaQuery.of(context).size;
      return ChangeNotifierProvider(
          create: (context) => AppoimentProvider(),
          child: Scaffold(
            backgroundColor: Color.fromARGB(255,148, 215, 215),
            drawer: Drawers(),
            appBar: AppBar(
                backgroundColor: Color.fromARGB(255,148, 215, 215),
                centerTitle: true,
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0.0,
                actions: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.notifications_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
            body: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      "My Activity",
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: ListView(children: children),
                    ),
                  )
                ],
              ),
            ),
          ));
    }

    Widget demoCategories(String img, String name, String drCount) {
      return Container(
        width: 100,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Color(0xff107163),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(img),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Color(0xffd9fffa).withOpacity(0.07),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                drCount,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}