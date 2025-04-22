import 'package:bmi_calculator/services/Calculate_BMI.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int age;
  final double weight;
  final double height;
  final String gender;
  const ResultScreen({
    super.key,
    required this.age,
    required this.weight,
    required this.height,
    required this.gender,
  });
  @override
  Widget build(BuildContext context) {
    double bmi = calculateBMI(height, weight);
    String BMI = bmi.toStringAsFixed(1);
    String BMICategorie = "";
    String bmiCategory;
    Color c1 = Color(0xff540a54) ;
    Color c2 = Color(0xff540a54) ;
    Color c3 = Color(0xff540a54) ;
    Color c4 = Color(0xff540a54) ;
    if (bmi < 18.5) {
      bmiCategory = "Underweight";
      c1 = Color(0xffa40f77);
    } else if (bmi >= 18.5 && bmi < 24.9) {
      bmiCategory = "Normal weight";
      c2 = Color(0xffa40f77);
    } else if (bmi >= 25 && bmi < 29.9) {
      bmiCategory = "Overweight";
      c3 = Color(0xffa40f77);
    } else {
      bmiCategory = "Obese";
      c4 = Color(0xffa40f77);

    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2d0045),
        centerTitle: true, // 👈 This will center the title text
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
      ),
      body: Container(
        color: Color(0xff2d0045),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Color(0xffa40f77)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BMI" ,style: TextStyle(fontSize: 30 , color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("$BMI" ,style: TextStyle(fontWeight: FontWeight.bold  ,fontSize: 35 , color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("$bmiCategory" ,style: TextStyle(fontSize: 20 , color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: c1,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("UnderWeight" , style: TextStyle(color: Colors.white , fontSize: 18),),
                    Text("< 18.5" , style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: c2,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Normal Weight" , style: TextStyle(color: Colors.white , fontSize: 18),),
                    Text("8.5–24.9" , style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: c3,
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Overweight" , style: TextStyle(color: Colors.white , fontSize: 18),),
                    Text("25-29.9" , style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: c4,
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Obese" , style: TextStyle(color: Colors.white , fontSize: 18),),
                    Text("> 30" , style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("HEIGHT" , style: TextStyle(color: Colors.white , fontSize: 20),),
                Text("WEIGHT" , style: TextStyle(color: Colors.white , fontSize: 20),),
                Text("AGE   s" , style: TextStyle(color: Colors.white , fontSize: 20),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff540a54),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("$height cm" , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff540a54),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("$weight Kg" , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff540a54),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("$age" , style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
