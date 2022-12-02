import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:doctorappointment/User_module/widget/doctor_name.dart';
import 'package:provider/provider.dart';
import 'booking.dart';
import 'package:doctorappointment/User_module/widget/appbar.dart';

late List<Widget> doclist;

List<Widget> Den(){
  return [
    SizedBox(
      height: 20,
    ),

    doctor_name("assets/dr.jpg", "Dr.Sandeep Patel", "Density",
        "250 RS", "ABC Hospital-1, Ahmedabad", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/doctor.jpg", "DR. Ashok Seth",
        "density", "200 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/teeth.jpg", "Dr. Jay patil", "Dentisty",
        "200 RS", "ABC Hospital-1, Ahmedabad", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Deepak Agrawal",
        "Dentisty", "250 Rs", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Rohan Patir",
        "Dentisty", "200 RS", "ABC Hospital-1, Ahmedabad", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/doc.PNG", "Dr. Ajay Kaul", "Dentisty",
        "300 RS", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Nveen Mishra",
        "Dentisty", "200 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Suresh Advani", "Dentisty",
        "250 RS", "ABC Hospital-1, Ahmedabad", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. mohamed hamedy",
        "Dentisty", "250 RS", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),


  ];
}

List<Widget> Neu(){
  return[
    SizedBox(
      height: 20,
    ),


    //Neurology
    doctor_name("assets/Neurology.PNG", "Dr. Manjindar Singh",
        "Neurology", "600 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/doc.PNG", "Dr. Kapil Kumar", "Neurology",
        "800 RS", " ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Vinod Raina",
        "Neurology", "400 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Alia Hassan",
        "Neurology", "400 RS", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Nandkishor Kapadia",
        "Neurology", "300 RS", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
  ];
}

List<Widget> ortho(){
  return[
    SizedBox(
      height: 20,
    ),


    //Orthopedics
    doctor_name("assets/Neurology.PNG", "Dr. Baraa Hassan ",
        "Orthopedics", "250 RS", " Heliopolis: nozha street", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/doc.PNG", "Dr. Kishor Saxena", "Orthopedics",
        "300 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Pradeep Sharma",
        "Orthopedics", "300 RS", "ABC Hospital-3, Vadodara", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name(
        "assets/accounts.png",
        "Dr. EC Vinay Kumar",
        "Orthopedics",
        "200 RS",
        "ABC Hospital-1, Ahmedabad",
        450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/accounts.png", "Dr. Rahul Bhargava",
        "Orthopedics", "400 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),


  ];
}

List<Widget> cardio(){
  return[

    SizedBox(
      height: 20,
    ),


    //cardiology and vascular disease
    doctor_name(
        "assets/cardiology.PNG",
        "Dr. P.L Dhingra",
        "cardiology disease",
        "400 RS",
        "ABC Hospital-1, Ahmedabad",
        450),
    SizedBox(
      height: 10,
    ),
    doctor_name("assets/doc.PNG", "Dr. Pawan Rawal",
        "cardiology disease", "400 RS", "ABC Hospital-2, Anand", 450),
    SizedBox(
      height: 10,
    ),
    doctor_name(
        "assets/accounts.png",
        "Dr. Sanjay Govil",
        "cardiology disease",
        "200 RS",
        "ABC Hospital-3, Vadodara",
        450),
    SizedBox(
      height: 10,
    ),
    doctor_name(
        "assets/accounts.png",
        "Dr. Sunil Kumar",
        "cardiology disease",
        "250 RS",
        "ABC Hospital-2, Anand",
        450),
  ];
}




class DoctorDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar("Doctor List"),
      ),
      body: Container(
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: ListView(scrollDirection: Axis.vertical, children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0),
              child: Text('Doctors for $glbcategotry',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: doclist,
            )
          ])),
    );
  }
}
