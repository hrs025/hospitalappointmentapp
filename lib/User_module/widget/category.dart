
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/main.dart';
import 'package:doctorappointment/User_module/screens/doctor_details.dart';

class category extends  StatefulWidget {
  String img;
  String name;
  String drCount;
  category(this.img,this.name, this.drCount);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {


     return GestureDetector(
        onTap: () {
          setState(() {
            if(widget.name=='Dentistry'){
              glbcategotry='Dentistry';
              doclist=Den();
            }
            else if(widget.name=='Neurology'){
              glbcategotry='Neurology';
              doclist=Neu();
            }
            else if(widget.name=='Orthopedics'){
              glbcategotry='Orthopedics';
              doclist=ortho();
            }
            else {
              glbcategotry='cardiology and vascular disease';
              doclist=cardio();
            }
          });
         Navigator.pushNamed(context, "/details");
        },
        child: Container(
          width: 100,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255,24, 163, 178), //box color
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(widget.img),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
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
                  color: Color.fromARGB(255,24, 163, 178),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  widget.drCount,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
//style color for the category of doctors
