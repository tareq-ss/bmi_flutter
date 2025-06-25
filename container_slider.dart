

import 'package:flutter/material.dart';

class ContainerSlider extends StatelessWidget {
  const ContainerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(16),

      height: 200,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333244),),
      child: Column(
        children: [
          Text("Height",style: TextStyle(color: Color(0xff8B8C9E),fontSize: 20),),
          SizedBox(height: 15,),
          Text("150",
            style: TextStyle(fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white)
            ,)
        ],
      ),
    );
  }
}
