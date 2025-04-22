import 'package:bmi_calculator/views/result_screen.dart';
import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key });

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  double height = 150;
  String gender = "";
  double weight = 60;
  int age = 20;
  Color buttonColorMale = Color(0xff540a54);
  Color buttonColorFemale = Color(0xff540a54);

  @override
  Widget build(BuildContext context) {
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
      ),
      body: Container(
        color: Color(0xff2d0045),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      gender = 'male';
                      buttonColorMale = Color(0xffa40f77);
                      buttonColorFemale = Color(0xff540a54);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColorMale,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: Size(175, 210),
                    padding: EdgeInsets.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male, size: 120, color: Colors.white),
                      Text(
                        "Male",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      gender = 'female';
                      buttonColorFemale = Color(0xffa40f77);
                      buttonColorMale = Color(0xff540a54);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColorFemale,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: Size(175, 210),
                    padding: EdgeInsets.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female, size: 120, color: Colors.white),
                      Text(
                        "Female",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 370,
              height: 240,
              decoration: BoxDecoration(
                color: Color(0xff540a54),
                borderRadius: BorderRadius.circular(15)
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
                  Text("$height cm", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
                  Slider(
                    value: height,
                    min: 0,
                    max: 250,
                    divisions: 250,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 175,
                  height: 210,
                  decoration: BoxDecoration(
                      color: Color(0xff540a54),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,),),
                      Text("$weight kg", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: (){
                            setState(() {
                              weight+=1;
                            });
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffa40f77),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Text("+" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),)
                          ),
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  weight-=1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffa40f77),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Text("-" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),)
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 175,
                  height: 210,
                  decoration: BoxDecoration(
                      color: Color(0xff540a54),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,),),
                      Text("$age", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  age+=1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffa40f77),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Text("+" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),)
                          ),
                          ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  age-=1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffa40f77),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: Text("-" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(age: age, weight: weight, height: height, gender: gender)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffa40f77),
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
              ),
              child: Text("Calculate" ,style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
