import 'package:bmi_flutter/screen/home_screen.dart';
import 'package:bmi_flutter/wedgit/bank_color.dart';
import 'package:bmi_flutter/wedgit/bmi_appbar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final double value;

  const ResultScreen({super.key, required this.value});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  double value = 0;

  String statusText(double value){
    if(value<18.5){
      return "underweight";
    }else if(value<24.9){
      return "Normal";
    }else if(value<29.9){
      return "overweight";
    }else {
      return "obesity";
    }
  }


  description(double value){
    if(value<18.5){
      return "Your body weight is lower than normal. This might be due to nutritional deficiency or other health conditions. It's recommended to consult a healthcare provider to gain weight healthily.";
    }else if(value<24.9){
      return "You have a healthy body weight. Keep maintaining your current lifestyle with balanced nutrition and regular physical activity.";
    }else if(value<29.9){
      return "You are slightly above the recommended weight for your height. Consider adopting a more active lifestyle and healthier eating habits to reduce health risks.";
    }else {
      return "You are at a higher risk of health problems related to excess body weight, such as heart disease, diabetes, and high blood pressure. It's important to consult a healthcare provider to develop a weight loss plan.";
    }
  }

  @override
  Widget build(BuildContext context) {
    value = widget.value;
    return Scaffold(
      backgroundColor: BankColor.backgroundcolor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          color: Color(0xffE83D67),
          child: Text(
            "Re-Calculate",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: BmiAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Result",
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 450,
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        statusText(value),
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff21BF73),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Text(
          
                        value.toStringAsFixed(2),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        description(value),
                        style: TextStyle(fontSize: 16, color: Color(0xff8B8C9E)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
