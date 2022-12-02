import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/doctor_dates.dart';
import 'package:doctorappointment/User_module/widget/doctor_timing.dart';
import 'package:flutter/rendering.dart';
import 'package:doctorappointment/User_module/widget/appbar.dart';
import 'package:doctorappointment/User_module/provider/Appointment_provider.dart';

String glbtime='08:30 AM';
String glbdate='16/5/2021';

class Booking extends StatefulWidget {
  String img;
  String Name;
  String category;
  String rate;
  Booking(this.img,this.Name, this.category,this.rate);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  List select1 = [true, false, false, false, false, false, false, false, false, false, false, false];

  List select3 = [true, false, false, false, false, false, false];

  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255,148, 215, 215),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255,148, 215, 215),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        widget.img,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              widget.Name,
                              maxLines: 3,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              widget.category,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              widget.rate,
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'May 2022',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='16/5/2022';
                          select3[0] = true;
                        });
                      },
                      child: demoDates("Mon", "16", select3[0])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='17/5/2022';
                          select3[1] = true;
                        });
                      },
                      child: demoDates("Tues", "17", select3[1])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='18/5/2022';
                          select3[2] = true;
                        });
                      },
                      child: demoDates("Wed", "18", select3[2])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='19/5/2022';
                          select3[3] = true;
                        });
                      },
                      child: demoDates("thurs", "19", select3[3])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='20/5/2022';
                          select3[4] = true;
                        });
                      },
                      child: demoDates("Fri", "20", select3[4])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='21/5/2022';
                          select3[5] = true;
                        });
                      },
                      child: demoDates("Sat", "21", select3[5])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select3.length; i++) {
                            select3[i] = false;
                          }
                          glbdate='22/5/2022';
                          select3[6] = true;
                        });
                      },
                      child: demoDates("Sun", "22", select3[6])),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.7,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            glbtime='08:30 AM';
                            select1[0] = true;
                          });
                        },
                        child: doctorTimingsData("08:30 AM", select1[0])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            glbtime='09:20 AM';
                            select1[1] = true;
                          });
                        },
                        child: doctorTimingsData("09:20 AM", select1[1])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            glbtime='10:45 AM';
                            select1[2] = true;
                          });
                        },
                        child: doctorTimingsData("10:45 AM", select1[2])),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < select1.length; i++) {
                              select1[i] = false;
                            }
                            glbtime="11:00 AM";
                            select1[3] = true;
                          });
                        },
                        child: doctorTimingsData("11:00 AM", select1[3])),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="12:30 AM";
                          select1[4] = true;
                        });
                      },
                      child: doctorTimingsData("12:30 AM", select1[4]),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="01:00 AM";
                          select1[5] = true;
                        });
                      },
                      child: doctorTimingsData("01:00 AM", select1[5]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: Text(
                'Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="06:30 AM";
                          select1[6] = true;
                        });
                      },
                      child: doctorTimingsData("06:30 AM", select1[6])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="07:00 AM";
                          select1[7] = true;
                        });
                      },
                      child: doctorTimingsData("07:00 AM", select1[7])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="07:30 AM";
                          select1[8] = true;
                        });
                      },
                      child: doctorTimingsData("07:30 AM", select1[8])),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          for (var i = 0; i < select1.length; i++) {
                            select1[i] = false;
                          }
                          glbtime="08:00 PM";
                          select1[9] = true;
                        });
                      },
                      child: doctorTimingsData("08:00 PM", select1[9])),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var i = 0; i < select1.length; i++) {
                          select1[i] = false;
                        }
                        glbtime="08:30 PM";
                        select1[10] = true;
                      });
                    },
                    child: doctorTimingsData("08:30 PM", select1[10]),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        for (var i = 0; i < select1.length; i++) {
                          select1[i] = false;
                        }
                        glbtime="09:00 PM";
                        select1[11] = true;
                      });
                    },
                    child: doctorTimingsData("09:00 PM", select1[11]),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 54,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF00abff),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x17000000),
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {

                    Navigator.pushNamed(context, "/appoiment");
                  },
                  child: Text(
                    'Make An Appointment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
