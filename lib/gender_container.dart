

import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
final String title;
final IconData iconData;
final bool isActive;
final void Function()? onTap;
const GenderContainer({super.key, required this.title, required this.iconData, this.isActive=false, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          width: 155,
          decoration: BoxDecoration(
              color: isActive? Color(0xff333244): Color(0xff24263B),
            // border: Border.all(color: Colors.grey,width: 10),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconData, size: 150, color: Colors.white,),
                SizedBox(height: 20,),
                Text(title,
                  style: TextStyle(
                      color:Color(0xff8B8C9E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),

              ],
            ),
          )
      ),
    );

  }
}

