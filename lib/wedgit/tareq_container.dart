

import 'package:flutter/material.dart';

class TareqContainer extends StatefulWidget {
final Function(int) onHeightChanged;
  const TareqContainer({super.key, required this.onHeightChanged});

  @override
  State<TareqContainer> createState() => _TareqContainerState();
}

class _TareqContainerState extends State<TareqContainer> {
  int height=100;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),


      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333244),),
      child: Column(
        children: [
          Text("Height",style: TextStyle(color: Color(0xff8B8C9E),fontSize: 20),),
          SizedBox(height: 15,),
         Text.rich(
             TextSpan(children: [
               TextSpan(text: height.toString(),
                   style: TextStyle(
                     fontSize: 40,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                   )),
               TextSpan(text: "cm",
                   style: TextStyle(
                     fontSize: 15,
                     color: Colors.white
                   ))
             ])
         ),
          Slider(value: height.toDouble(),
              max: 230,
              min: 50,
              activeColor: Color(0xffE83D67),
              secondaryActiveColor: Color(0xffE83D67),
    onChanged: (value) {
    setState(() {
    height = value.toInt();
    });

    widget.onHeightChanged(height);
    }
              )
        ],
      ),
    );
  }
}
