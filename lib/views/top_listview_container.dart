import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopListView extends StatefulWidget {
  final void Function() onpressed;

   final  bool isselected;
  String text;


   TopListView({super.key,required this.isselected,required this.text,required this.onpressed});

  @override
  State<TopListView> createState() => _TopListViewState();
}

class _TopListViewState extends State<TopListView> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
       onTap: widget.onpressed,
      child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 18),
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: widget.isselected ?null:Border.all(width: 1,
                    color: Color(0xff939393)),
                    color: widget.isselected?Color( 0xff404066
):Colors.white,
                   ),
                  padding: EdgeInsets.all(12),
    
                  child: Text(widget.text,style: TextStyle(fontSize: 12,
                  color: widget.isselected?Colors.white:  Color.fromRGBO(147, 147, 147, 1)),),
                ),
    );
  }
}