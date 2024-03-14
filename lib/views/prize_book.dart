// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:figma_12task/screens/book_page_one.dart';
import 'package:flutter/material.dart';

class Prizebook extends StatelessWidget {
  final String image;
   final Color backcolor;
  final  double prize;
  final String topstring;
  final String bottomstring;
   const  Prizebook(
      {super.key,
      required this.bottomstring,
      required this.topstring,
      required this.backcolor,
      required this.image,
      required this.prize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>BookPage1(ertakname: topstring, image: image)));
       },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 22,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
               padding: const EdgeInsets.only(bottom: 30,right: 5,left: 5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: backcolor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6))),
                child: Transform.scale(
                    scale: 1,
                    child: Image.network(
                      image,
                      fit: BoxFit.fitWidth,
                     
                    )),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                           topstring
                           ,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: "Playfair"),
                          ),
                          Container(
                            height: 18,
                            width: 38,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFF8E0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffFCC400),
                                  size: 15,
                                ),
                                Text(
                                  "4.0",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                     Text(
                      bottomstring,
                        style: TextStyle(fontSize: 12, color: Color(0xff515151)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$$prize",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Transform.rotate(
                                angle: pi,
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 16,
                                )),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 0.48, color: Colors.black)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
    ;
  }
}
