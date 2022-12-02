import 'dart:ui';

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


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    User? user = Provider.of<AuthService>(context).user;
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: ListView(scrollDirection: Axis.vertical, children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Hi,',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    'Welcome to Hospital Appointment',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey,width: 1,),
                  ),),
                // Container(
                //   margin: EdgeInsets.only(top: 20, left: 20),
                // child: Text(
                //       user == null ? 'Guest' : user.email!,
                //
                //       style: TextStyle(
                //         fontSize: 25,
                //         color: Colors.blue,
                //       ),
                //     ),
                // ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.only(top: 15, left: 20),
                  child: Stack(
                    children: [
                      Container(
                        child: Text(
                          'Category',
                          style: TextStyle(
                            color: Color(0xff363636),
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.only(top: 5, left: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      category("assets/tooth.png", "Dentistry", "9 Doctors"),
                      category("assets/brain.png", "Neurology", "5 Doctors"),
                      category("assets/bone.png", "Orthopedics", "5 Doctors"),
                      category("assets/heart.png",
                          "cardiology and vascular disease", "4 Doctors"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15,bottom: 5, left: 20),
                  child: Text(
                    "Hospitals",
                    style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black,width: 1,),
                        ),),
                      hspcard('assets/hosp-1.jpg', 'ABC Hospital-1',
                          'Ahmedabad', '9876543210', 300, 'open 24 hours'),
                    Container(
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.black,width: 1,),
                    ),),
                      SizedBox(
                        height: 5,
                      ),
                      hspcard('assets/hosp-2.jpg', 'ABC Hospital-2', 'Anand',
                          '9753108642', 300, 'open 24 hours'),
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black,width: 1,),
                        ),),
                      SizedBox(
                        height: 5,
                      ),
                      hspcard('assets/hosp-3.jpg', 'ABC Hospital-3',
                          'Vadodara', '9012345678', 300, 'open 24 hours'),
                      Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(color: Colors.black,width: 1,),
                        ),),
                    ],
                  ),
                ),
              ])
        ]));
  }
}
