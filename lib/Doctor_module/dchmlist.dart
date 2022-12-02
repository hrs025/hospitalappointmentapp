import 'dart:ui';
import 'package:flutter/material.dart';
import 'theme.dart';

class dchome extends StatefulWidget {
  const dchome({Key? key}) : super(key: key);

  @override
  State<dchome> createState() => _dchomeState();
}

class _dchomeState extends State<dchome> {

  List<String> dropvalue=['16-05-2022', '17-05-2022', '18-05-2022', '19-05-2022','20-05-2022','21-05-2022','22-05-2022'];
  String value='16-05-2022';


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      children: [
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
    );
  }
}
