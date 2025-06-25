

import 'package:flutter/material.dart';

class AgeWeight extends StatelessWidget {
  final String title;
  final String value;
  final void Function()? addOnPressed;
  final void Function()? minusOnPressed;
  const AgeWeight({super.key, required this.title, required this.value, this.addOnPressed, this.minusOnPressed});

  @override
  Widget build(BuildContext context) {
    return   
     InkWell(

       child: Container(
                  padding: EdgeInsets.all(16),
                  height: 270,
                  width: 185,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244)
                  ),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                        style: TextStyle(
                            color: Color(0xff8B8C9E),
                            fontSize: 20),),
                      Text(value,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 60,
                      ),),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            heroTag: "btn1$title",
                            backgroundColor: Color(0xff8B8C9E),
                            shape: CircleBorder(),
                            onPressed: addOnPressed,
                            child: Icon(Icons.add,
                              color: Colors.white,
                            ),),
                          FloatingActionButton(
                            heroTag: "btn2$title",
                            backgroundColor: Color(0xff8B8C9E),
                            shape: CircleBorder(),
                            onPressed: minusOnPressed,
                            child: Icon(Icons.remove,
                              color: Colors.white,
                            ),)
                        ],
                      )
                    ],
                  )
              ),


     );
  }
}






