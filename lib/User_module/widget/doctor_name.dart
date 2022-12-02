import 'package:flutter/material.dart';
import 'toprated.dart';

class doctor_name extends StatefulWidget{
   String img;
   String Name;
   String category;
   String fees;
   String location;
   double width;
  doctor_name(this.img, this.Name,this.category, this.fees,this.location, this.width);

  @override
  State<doctor_name> createState() => _doctor_nameState();
}

class _doctor_nameState extends State<doctor_name> {
 @override
  Widget build(BuildContext context) {

   return GestureDetector(
        onTap: () {
          setState(() {
            glbimg=widget.img;
            glbcategotry=widget.category;
            glbName=widget.Name;
            glbfees=widget.fees;
            glbrate='';
            // glbrate=widget.rate;
          });
         Navigator.pushNamed(context, "/doctorreserve");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Container(

       width: widget.width,
          decoration: BoxDecoration(

              color: Color.fromARGB(200,24, 163, 178),
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.symmetric(horizontal:20,
          vertical: 16),

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
                  SizedBox(width: 7,),
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.Name, style: TextStyle(
                          fontSize: 14
                        ),),
                        SizedBox(height: 2,),
                        Text(widget.category, style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14
                        ),),
                         SizedBox(height: 2,),

                        Text(widget.location, style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14
                        ),)
                      ],
                    ),
                  ),

                   ],
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 15,
              //       vertical: 5),
              //   margin: EdgeInsets.symmetric(horizontal: 20),
              //   decoration: BoxDecoration(
              //       color: Color(0xFF0077c6),
              //       borderRadius: BorderRadius.circular(10)
              //   ),
              //   child: Text(widget.rate, style: TextStyle(
              //
              //       color: Colors.white,
              //       fontSize: 13,
              //       fontWeight: FontWeight.w500
              //   ),   ),),
            ],
          ),
   ),
        ) );

}
}
  
  