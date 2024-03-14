import 'package:figma_12task/screens/book_page_one.dart';
import 'package:flutter/material.dart';

class Bookread extends StatelessWidget {
   final  String image;
   final String ertakname;
  String text1;
  String text2;
  Color color;
  

  Bookread({required this.color,super.key,required this.image,required this.text1,required this.text2,required this.ertakname});


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>BookPage1(ertakname: ertakname, image: image)));
        
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Expanded(flex: 3,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        bottomLeft:  Radius.circular(20),   ),color: color,),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(0),
                        child:                     Transform.scale(
                          scale: 0.82,
                          child: Image(image: NetworkImage(image),)),
                      
                    )),
                    SizedBox(width: 24),
                    Expanded(flex: 5,
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(
                          text: "$text1\n",style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w500,
                            color: Colors.black,fontFamily: "Playfair"
                            
                          ),
                          children: [
                            TextSpan(
                              text: text2,
                              style: TextStyle(
                                fontSize: 12,fontWeight: FontWeight.w400,
                                color: Color(0xff515151)
                              )
                            )
                          ]
                        )),
                        SizedBox(height: 15,),
                        Container(
                          
                          height: 5,
                          width: 149,
                          child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child:
                             Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffD1618A)
                              ),
    
                            )),
                            Expanded(
                              flex: 7,
                               child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                                color: Color(0xffD9D9D9),
    
                              ),
    
                            ))
                          ],
                          ),
                        ),
                        SizedBox(height: 2,),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text("30%     ",style: TextStyle(
                            fontSize: 10
                          ),),
                        ),
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.topLeft ,
                          child: Container(
                            padding: EdgeInsets.all(5),
                          
                          child: Text("Update Progress",),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 2,
                                color: Color(0xff404066)
                        
                              )
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                    ))
                  ],
                ),
                height: 144,
                width: 290,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  
                ),
              
              ),
    )
          ;
  }
}