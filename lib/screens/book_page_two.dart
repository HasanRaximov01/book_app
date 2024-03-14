 import 'package:flutter/material.dart';

import '../services/constants/strings.dart';

class BookPage2 extends StatefulWidget {
 final String  longtext;
  final String ertakname;
  const BookPage2({super.key,required this.ertakname,
  required this.longtext});

  @override
  State<BookPage2> createState() => _BookPage2State();
}

class _BookPage2State extends State<BookPage2> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
         minimum: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          
              Column(
          children: [
             SizedBox(height: 40,),
              
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children:[ 
                 IconButton( onPressed: (){
                  Navigator.pop(context);

                 },
                 icon: Icon(Icons.arrow_back,size: 32,),),
                
                Text(widget.ertakname,style: TextStyle(
                       
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w700
              ),),
           
           ] ),
            SizedBox(height: 40,),
            Text(widget.longtext,
           style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,),
          ],
               ),),
        )
    );
  }
}