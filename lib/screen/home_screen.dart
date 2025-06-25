

import 'package:bmi_flutter/gender_container.dart';
import 'package:bmi_flutter/wedgit/age_weight.dart';
import 'package:bmi_flutter/wedgit/bank_color.dart';
import 'package:bmi_flutter/wedgit/bmi_appbar.dart';
import 'package:bmi_flutter/wedgit/result_screen.dart';
import 'package:bmi_flutter/wedgit/tareq_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool isMale=false;
int weight=60;
int age=17;
int height=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BankColor.backgroundcolor,
      bottomNavigationBar:
      InkWell(        onTap: () {
        double heightByM = height / 100;
        double bmiResult = weight / (heightByM * heightByM);


        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(value: bmiResult),
          ),
        );
      },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          color: Color(0xffE83D67),
          child: Text("Calculate",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
    ),
      appBar: BmiAppbar(),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Expanded(
                child: GenderContainer(
                  isActive: isMale,
                  onTap: (){
                 setState(() {
                   isMale=true;
                 });
                  },
                  title: "male",
                  iconData: Icons.male,),
              ),
                  SizedBox(width: 9,),
                  Expanded(
                    child: GenderContainer(title: "female",
                      iconData: Icons.female,
                      onTap: (){
                      setState(() {
                        isMale=false;
                      });
                      },
                      isActive: !isMale,),
                  ),
                ],
              ),
              SizedBox(height: 29,),
             Container(
               height: 189,
                width: 500,

                child:  TareqContainer(
                  onHeightChanged: (newHeight) {
                    setState(() {
                      height = newHeight;
                    });
                  },
                ),
              ),

              SizedBox(height: 29,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Expanded(child: AgeWeight(title: "weight", value: weight.toString(),
               addOnPressed: (){
                 setState(() {
                   weight++;
                 });
               },
               minusOnPressed: (){
              if(weight>0){
                setState(() {
                  weight --;
                });
              }
               },)),
          SizedBox(width: 9,),
           AgeWeight(title: "age", value: age.toString(),
             addOnPressed: (){
               setState(() {
                 age++;
               });
             },
             minusOnPressed: (){
           if(age>0){
             setState(() {
               age --;
             });
           }
             },),
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
