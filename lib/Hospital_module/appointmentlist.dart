import 'dart:ui';
import 'package:doctorappointment/Hospital_module/hsp%20list.dart';
import 'package:flutter/material.dart';
import 'package:doctorappointment/Doctor_module/theme.dart';

class hspappoint extends StatefulWidget {
  const hspappoint({Key? key}) : super(key: key);

  @override
  State<hspappoint> createState() => _hspappointState();
}

class _hspappointState extends State<hspappoint> {

  List<String> dropvalue=['25-04-2022', '26-04-2022', '27-04-2022', '28-04-2022','29-04-2022','30-04-2022','01-05-2022'];
  String value='25-04-2022';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          SizedBox(height:5),
          Text('Appointments of $hspName  :',style: TextStyles.body,),
          SizedBox(height:5),
          Row(
            children: [
              Text('Date  :',style: TextStyles.body,),
              SizedBox(width: 8,),
              DropdownButton<String>(
                value: value,
                onChanged: (String? newValue) {
                  setState(() {
                    value = newValue!;
                  });
                },
                items: dropvalue.map((drvalue) {
                  return DropdownMenuItem<String>(
                    value: drvalue,
                    child: Text(drvalue,style: TextStyles.body,),
                  );
                }).toList(),
              ),
            ],
          ),
          SizedBox(height:5),
          Table(
            children: [
              TableRow(
                  children: [
                    Text('Name', style: TextStyles.body,),
                    Text('Time', style: TextStyles.body,),
                    Text('Status',style: TextStyles.body,),
                    Text('To Modify',style: TextStyles.body,),
                    Text('Appointment',style: TextStyles.body,),
                  ]
              ),
              TableRow(
                  children: [
                    Text('', style: TextStyles.body,),
                    Text('', style: TextStyles.body,),
                    Text('', style: TextStyles.body,),
                    Text(' ',style: TextStyles.body,),
                    Text(' ',style: TextStyles.body,),
                  ]
              ),

              TableRow(
                  children: [
                    Text('Arya Pankaj', style: TextStyles.body,),
                    Text('8:30', style: TextStyles.body,),
                    Text('Complete', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Narayana Harshad', style: TextStyles.body,),
                    Text('8:30', style: TextStyles.body,),
                    Text('Complete', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Gopinath Mishra', style: TextStyles.body,),
                    Text('8:30', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Chandra Das', style: TextStyles.body,),
                    Text('9:20', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Mitra Chaudhari', style: TextStyles.body,),
                    Text('10:45', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Anuj Patel', style: TextStyles.body,),
                    Text('10:45', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Govind Joshi', style: TextStyles.body,),
                    Text('11:00', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Vijay Singh', style: TextStyles.body,),
                    Text('11:00', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Deep Gupta', style: TextStyles.body,),
                    Text('01:00', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    Text('Shrivatsa Gadhavi', style: TextStyles.body,),
                    Text('01:00', style: TextStyles.body,),
                    Text('Pending', style: TextStyles.body,),
                    TextButton(
                      child: Text('Modify timing', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: Text('cancel appointment', style: TextStyles.tab),
                      onPressed: (){},
                    ),
                  ]
              ),


            ],
          ),
        ],
      ),
    );
  }
}
