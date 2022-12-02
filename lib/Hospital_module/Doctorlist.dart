import 'package:flutter/material.dart';
import 'adddoctor.dart';
import 'hsp list.dart';

class HSPdoclist extends StatefulWidget {
  const HSPdoclist({Key? key}) : super(key: key);

  @override
  State<HSPdoclist> createState() => _HSPdoclistState();
}

class _HSPdoclistState extends State<HSPdoclist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Text('Doctor List of Hosp-1'),
          SizedBox(height: 10),
          hspDoclist("assets/teeth.jpg", "Dr.Sandeep Patel", "Dentisty",
              "4.7", 400,'ABC Hospital-1, Ahmedabad'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/boness.jpg", "Dr. Jay patil",
              "Bone Specialist", "4.8", 800,'ABC Hospital-1, Ahmedabad'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/Neurology.PNG", "Dr. Rohan Patir",
              "Neurology Specialist", "4.4", 400,'ABC Hospital-1, Ahmedabad'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/cardiology.PNG", "Dr. Suresh Advani",
              "cardiology disease", "4.1", 600,'ABC Hospital-1, Ahmedabad'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/dr.jpg", "DR. Ashok Seth", "Dentisty",
              "4.7", 400,'ABC Hospital-2, Anand'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/doctor.jpg", "Dr. Nveen Mishra",
              "Bone Specialist", "4.8", 400,'ABC Hospital-2, Anand'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/teeth.jpg", "Dr. Manjindar Singh",
              "Neurology Specialist", "4.4", 800,'ABC Hospital-2, Anand'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/accounts.png", "Dr. Vinod Raina",
              "cardiology disease", "4.1", 600,'ABC Hospital-2, Anand'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/accounts.png", "Dr. Deepak Agrawal", "Dentisty",
              "4.7", 600,'ABC Hospital-3, Vadodara'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/doc.PNG", "Dr. Ajay Kaul",
              "Bone Specialist", "4.8", 800,'ABC Hospital-3, Vadodara'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/Neurology.PNG", "Dr. Kapil Kumar",
              "Neurology Specialist", "4.4", 600,'ABC Hospital-3, Vadodara'),
          SizedBox(
            height: 5,
          ),
          hspDoclist("assets/cardiology.PNG", "Dr. mohamed hamedy",
              "cardiology disease", "4.1", 400,'ABC Hospital-3, Vadodara'),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10,),
                  Text('Add Doctor'),
                ],
              ),
              onPressed: () async {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Adddoc()));
                },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
