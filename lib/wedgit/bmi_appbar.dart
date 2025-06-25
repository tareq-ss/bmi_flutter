


import 'package:flutter/material.dart';

class BmiAppbar extends StatelessWidget implements PreferredSizeWidget{
  const BmiAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFF24263B),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      title: Text("BMI Calcultor",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20),),);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


}
