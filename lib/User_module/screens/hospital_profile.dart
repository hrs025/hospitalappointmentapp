import 'package:doctorappointment/User_module/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/widget/hspcard.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';

late List<Widget> hosp;


List<Widget> hosp1() {
  return [
    SizedBox(height: 10),
    toprated("assets/teeth.jpg", "Dr.Sandeep Patel", "Dentisty",
        "4.7", 400,'ABC Hospital-1, Ahmedabad'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/boness.jpg", "Dr. Jay patil",
        "Bone Specialist", "4.8", 800,'ABC Hospital-1, Ahmedabad'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/Neurology.PNG", "Dr. Rohan Patir",
        "Neurology Specialist", "4.4", 400,'ABC Hospital-1, Ahmedabad'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/cardiology.PNG", "Dr. Suresh Advani",
        "cardiology disease", "4.1", 600,'ABC Hospital-1, Ahmedabad'),
    SizedBox(
      height: 5,
    )
  ];
}

List<Widget> hosp2() {
  return [
    SizedBox(height: 10),
    toprated("assets/dr.jpg", "DR. Ashok Seth", "Dentisty",
        "4.7", 400,'ABC Hospital-2, Anand'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/doctor.jpg", "Dr. Nveen Mishra",
        "Bone Specialist", "4.8", 400,'ABC Hospital-2, Anand'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/teeth.jpg", "Dr. Manjindar Singh",
        "Neurology Specialist", "4.4", 800,'ABC Hospital-2, Anand'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/accounts.png", "Dr. Vinod Raina",
        "cardiology disease", "4.1", 600,'ABC Hospital-2, Anand'),
    SizedBox(
      height: 5,
    )
  ];
}

List<Widget> hosp3() {
  return [
    SizedBox(height: 10),
    toprated("assets/accounts.png", "Dr. Deepak Agrawal", "Dentisty",
        "4.7", 600,'ABC Hospital-3, Vadodara'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/doc.PNG", "Dr. Ajay Kaul",
        "Bone Specialist", "4.8", 800,'ABC Hospital-3, Vadodara'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/Neurology.PNG", "Dr. Kapil Kumar",
        "Neurology Specialist", "4.4", 600,'ABC Hospital-3, Vadodara'),
    SizedBox(
      height: 5,
    ),
    toprated("assets/cardiology.PNG", "Dr. mohamed hamedy",
        "cardiology disease", "4.1", 400,'ABC Hospital-3, Vadodara'),
    SizedBox(
      height: 5,
    )
  ];
}



class hospital extends StatefulWidget {
  const hospital({Key? key}) : super(key: key);

  @override
  State<hospital> createState() => _hospitalState();
}

class _hospitalState extends State<hospital> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,148, 215, 215),
        elevation: 1,
        centerTitle: true,
        title: Text('Hospital',style: TextStyle(color: Colors.black,)),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          color: Colors.grey[300],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(hsglbimg),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text(hsglbName, style: TextStyle(
                          color: Color(0xFF0077c6),
                          fontSize: 24
                      ),),
                      SizedBox(height: 5,),
                      Text('Address: $hsglblocation', style: TextStyle(
                          fontSize: 20
                      ),),
                      SizedBox(height: 5),
                      Text('Time: $hsglbtime', style: TextStyle(
                        fontSize: 20,
                      ),   ),
                      SizedBox(height: 5),
                      Text('Contact no: $hsglbnumber', style: TextStyle(
                        fontSize: 20,
                      ),   ),
                      SizedBox(height: 10),
                    ]),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.black,width: 1,),
          ),),
        Container(
          padding: const EdgeInsets.only(left: 10.0,top: 10.0),
          child: Text('Doctors',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: hosp,
          ),
        ),
      ],),
    );
  }
}
