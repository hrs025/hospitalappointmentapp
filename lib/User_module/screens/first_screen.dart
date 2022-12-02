import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/theme/theme.dart';

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bgmainscreen.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              // Image.asset(
              //   "assets/heartbeat.png",
              //   color: Colors.white,
              //   height: 100,
              // ),
              Padding(
                padding: const EdgeInsets.only(top:220.0),
                child: Center(
                  child: Text(
                    "Hospital Appointment",
                    style: TextStyles.texttStyle.grey,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Appointement Management System",
                  style: TextStyles.bodySm.grey.bold,
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white)),
                    style: OutlinedButton.styleFrom(
                        primary: Colors.redAccent,
                        backgroundColor: Colors.redAccent,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
