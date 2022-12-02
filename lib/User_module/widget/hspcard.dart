import 'package:flutter/material.dart';
import 'package:doctorappointment/User_module/screens/hospital_profile.dart';

late String hsglbimg;
late String hsglbName;
late String hsglblocation;
late String hsglbnumber;
late String hsglbtime;

class hspcard extends StatefulWidget {

  String img;
  String Name;
  String location;
  String number;
  String time;
  double width;
  hspcard(this.img,this.Name, this.location,this.number,this.width,this.time);

  @override
  State<hspcard> createState() => _hspcardState();
}

class _hspcardState extends State<hspcard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            hsglbimg = widget.img;
            hsglblocation = widget.location;
            hsglbName = widget.Name;
            hsglbnumber = widget.number;
            hsglbtime = widget.time;

            if(hsglbName=='ABC Hospital-1'){
              hosp=hosp1();
            }
            else if(hsglbName=='ABC Hospital-2'){
              hosp=hosp2();
            }
            else{
              hosp=hosp3();
            }

          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const hospital()),
          );
        },
        child:   Container(
          width: widget.width,
          decoration: BoxDecoration(

              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.symmetric(horizontal:10,
              vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(widget.img, height: 80,),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.Name, style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),),
                  SizedBox(height: 2,),
                  Text('Address: ${widget.location}', style: TextStyle(
                      fontSize: 16
                  ),),
                  SizedBox(height: 2),
                  Text('Time: ${widget.time}', style: TextStyle(
                    fontSize: 16,
                  ),   ),
                  SizedBox(height: 2),
                  Text('Contact no: ${widget.number}', style: TextStyle(
                    fontSize: 16,
                  ),   ),
                ],
              ),
            ],
          ),
        ) );
  }
}
