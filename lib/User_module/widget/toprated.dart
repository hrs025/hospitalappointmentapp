import 'dart:math';

import 'package:flutter/material.dart';

late String glbimg;
late String glbName;
late String glbcategotry;
late String glbrate;
late String glblocation;
late String glbfees;

class toprated extends  StatefulWidget {
   String img;
   String Name;
   String category;
   String rate;
   String location;
   double width;
  toprated(this.img,this.Name, this.category,this.rate,this.width,this.location);

  @override
  State<toprated> createState() => _topratedState();
}

class _topratedState extends State<toprated> {
  @override
  Widget build(BuildContext context) {
     return GestureDetector(
        onTap: () {
          setState(() {
            glbimg=widget.img;
            glbcategotry=widget.category;
            glbName=widget.Name;
            glbrate=widget.rate;
          });
         Navigator.pushNamed(context, "/doctorreserve");
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
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.Name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14
                      ),),
                      SizedBox(height: 2,),
                      Text(widget.category, style: TextStyle(
                        fontSize: 14,
                          color: Colors.black54,
                      ),),
                      Text(widget.location, style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14
                      ),),
                    ],
                  ),
                ),
                SizedBox(width: 40,),

                 ],
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              padding: EdgeInsets.symmetric(horizontal: 15,
                  vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                  color: Color(0xFF0077c6),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(widget.rate, style: TextStyle(

                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
              ),   ),),
          ],
        ),
   ) );

}
}