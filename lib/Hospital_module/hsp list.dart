import 'dart:math';

import 'package:doctorappointment/Hospital_module/appointmentlist.dart';
import 'package:flutter/material.dart';

late String hspimg;
late String hspName;
late String hspcategotry;
late String hsprate;
late String hsplocation;
late String hspfees;

class hspDoclist extends  StatefulWidget {
  String img;
  String Name;
  String category;
  String rate;
  String location;
  double width;
  hspDoclist(this.img,this.Name, this.category,this.rate,this.width,this.location);

  @override
  State<hspDoclist> createState() => _hspDoclistState();
}

class _hspDoclistState extends State<hspDoclist> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            hspimg=widget.img;
            hspcategotry=widget.category;
            hspName=widget.Name;
            hsprate=widget.rate;
          });
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => hspappoint()));
        },
        child:   Container(
          width: widget.width,
          decoration: BoxDecoration(
              color: Color.fromARGB(200,24, 163, 178),
              borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.symmetric(horizontal:10,
              vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30), // Image radius
                          child: Image.asset(widget.img, height: 60, fit: BoxFit.fitHeight),
                        ),
                      )
                    // Image.asset(widget.img, height: 60,fit: BoxFit.fitHeight)
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.Name, style: TextStyle(
                            fontSize: 14
                        ),),
                        SizedBox(height: 2,),
                        Text(widget.category, style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 40,),

                ],
              ),
              Container(
                alignment: AlignmentDirectional.topEnd,
                padding: EdgeInsets.symmetric(horizontal: 12,
                    vertical: 5),
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                    color: Color(0xFF0077c6),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Icon(Icons.delete),
                    Text('Delete', style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),   ),
                  ],
                ),),
            ],
          ),
        ) );

  }
}