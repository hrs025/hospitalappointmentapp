import 'dart:ui';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/doctor_dates.dart';
import 'package:doctorappointment/User_module/widget/doctor_timing.dart';
import 'package:flutter/rendering.dart';
import 'package:doctorappointment/User_module/widget/appbar.dart';
import 'package:doctorappointment/User_module/provider/Appointment_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../agora/callpage.dart';
import '../agora/audiopage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'login.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import '';
// import 'package:agora_rtc_engine/rtc_engine.dart';
// import 'package:permission_handler/permission_handler.dart';

String glbtime = '25/4/2021';
late String glbdate;

class Home2Booking extends StatefulWidget {
  String img;
  String Name;
  String category;
  String rate;
  Home2Booking(this.img, this.Name, this.category, this.rate);

  @override
  State<Home2Booking> createState() => _Home2BookingState();
}

class _Home2BookingState extends State<Home2Booking> {
  @override
  List select1 = [true, false, false, false, false, false];

  List select2 = [true, false, false, false, false, false];

  List select3 = [true, false, false, false];

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi $name,',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'My name is $glbName, i am $glbcategotry.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Tap below button to connect.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            button('connect with chat',Icon(Icons.chat,size: 30,),'/chat'),
            button3('connect with call',Icon(Icons.call,size: 30,)),
            button1('connect with video',Icon(Icons.video_call,size: 30,),1),
          ],
        ),
      ),
    );
  }
}

class button extends StatefulWidget {
  String Btext;
  String route;
  Icon icon;
  button(this.Btext,this.icon,this.route);
  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
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
            Navigator.pushNamed(context, widget.route);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: widget.icon,
              ),
              Text(
                widget.Btext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 1,),
            ],
          ),
        ));
  }
}

class button1 extends StatefulWidget {
  String Btext;
  Icon icon;
  int Utext;
  button1(this.Btext,this.icon,this.Utext);
  @override
  _button1State createState() => _button1State();
}

class _button1State extends State<button1> {

  final myController = TextEditingController();
  bool _validateError = false;


  Future<void> onJoin() async {
    setState(() {
      myController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });

    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(),
        ));
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
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
          onTap: onJoin,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: widget.icon,
              ),
              Text(
                widget.Btext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 1,),
            ],
          ),
        ));
  }
}

class button3 extends StatefulWidget {
  String Btext;
  Icon icon;
  button3(this.Btext,this.icon);
  @override
  State<button3> createState() => _button3State();
}

class _button3State extends State<button3> {

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50,
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
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AudioCallScreen(),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                child: widget.icon,
              ),
              Text(
                widget.Btext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 1,),
            ],
          ),
        ));
  }
}
