

import 'package:figma_12task/screens/book_page_two.dart';
import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/icons.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class BookPage1 extends StatefulWidget {
  const BookPage1({super.key,required this.ertakname,required this.image});
  final  String ertakname;
   final  String image;
    

  @override
  State<BookPage1> createState() => _BookPage1State();
}


class _BookPage1State extends State<BookPage1> {


 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child:SingleChildScrollView(
            child: Stack(
              alignment: const Alignment(0,-0.24),
              children: [
                Column(children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    height: MediaQuery.sizeOf(context).height/2.1,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: CustomImage.backgroundImg,fit: BoxFit.cover)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row( 
                            children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: GestureDetector(
                                 onTap: (){
                                  Navigator.pop(context);
                                 },
                                 child: Image(image: CustomIcons.arrowIcon))),
                              Spacer(),
                            Text(widget.ertakname,style: TextStyle(fontFamily: CustomFonts.disp,color: CustomColor.blackColor,fontSize:20 ,fontWeight: FontWeight.w500),),
                              Spacer(),
                          ],),
                        ),
                        Text(CustomString.rachelGillingStr,style: TextStyle(fontFamily: CustomFonts.inter,color: CustomColor.blackLightColor,fontSize: 14,fontWeight: FontWeight.w400),),
                          Spacer(),
                        Transform.scale(
                          scale: 1.2,
                          child: Image(image: NetworkImage(widget.image),height: 240,width: 160,)),
                      ],
                    ),
                  ),
                  Container(
                    color: CustomColor.whiteColor.withOpacity(0.40),
                    width: MediaQuery.sizeOf(context).width,
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.ertakname,style: TextStyle(fontFamily: CustomFonts.disp,color: CustomColor.blackColor,fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(height: 12),
                        Text(CustomString.shortListStr,style: TextStyle(fontFamily: CustomFonts.inter,color: CustomColor.blackColor,fontSize: 14,fontWeight: FontWeight.w400)),
                      ],
                    ),
                  )
                ],),
                Padding(
                  padding: EdgeInsets.only(top:220),
                  child: Container(
                    height: 55,
                    width: MediaQuery.sizeOf(context).width / 1.3,
                    decoration: BoxDecoration(
                    color: CustomColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: CustomColor.blackLightColor.withOpacity(0.5),
                        offset: const Offset(0, 24),
                        spreadRadius: 0,
                        blurRadius: 50
                      )
                    ],
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: const BoxDecoration(
                          color: CustomColor.yellowColor,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Text("4.8",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                          color: CustomColor.blueLightColor,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: const Text(CustomString.fantacyStr,style: TextStyle(fontFamily: CustomFonts.inter,fontSize: 12,fontWeight: FontWeight.w500,color: CustomColor.blackColor),),
                        ),
                        const Text(CustomString.pageCountStr)
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ),
      
      ),
      
      bottomSheet:  Container(
          height: 80,
          width: MediaQuery.sizeOf(context).width,
          color: CustomColor.whiteColor.withOpacity(0.20),
          // color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
              onTap: () {},
                child: Container(
                  height: 55,
                  width: 55,
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: CustomColor.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: const Image(image: CustomIcons.bookmarkIcon,color: CustomColor.pinkColor,),
                ),
              ),
              GestureDetector(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BookPage2(ertakname: widget.ertakname, longtext: 
                 CustomString.iStr)));
                 },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: MediaQuery.sizeOf(context).width / 1.6,
                  decoration: const BoxDecoration(
                    color: CustomColor.blueColor,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: const Text("Read Book",style: TextStyle(color: CustomColor.whiteColor,fontFamily: CustomFonts.inter,fontSize: 16,fontWeight: FontWeight.w600),),
                ),
              ),
            ],
          ),
        ),
    );
  }
}