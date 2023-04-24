import 'package:flutter/material.dart';
import 'package:healthy_lifestyle/pages/otherPage3.dart';

class OtherPage2 extends StatefulWidget {
  const OtherPage2({Key? key}) : super(key: key);

  @override
  State<OtherPage2> createState() => _OtherPage2State();
}

class _OtherPage2State extends State<OtherPage2> {

  var score = 0;

  final questions = ["რომელია ჯანსაღი საუზმე?", "რომელია ჯანსაღი პროდუქტი?", "ჯანსაღი ცხოვრების წესი არ მოიცავს:", "როგორია ძილის ზოგადი მოთხოვნები ზრდასრული ადამიანისთვის", "რამდენი წუთი უნდა იაროს საშუალოდ ადამიანმა დღეში?", "დღეში რამდენი ლიტრი წყლის მიღება არის რეკომენდებული?", "დეპრესიასთან გამკლავების ერთ-ერთი გზაა:", "რას არ მოიცავს ჯანსაღი ცხოვრების წესი?", "რას არ იწვევს  ალკოჰოლიზმი?", "რომელი არ არის მავნე ჩვევა?"];

  final answersA = ["ცომეული", "მაიონეზი", "ალკოჰოლი", "8-12 საათი", "10 წუთი", "2 ლიტრი", "7 საათზე ნაკლები ძილი", 'პირადი ჰიგიენა', "ბედნიერებას", "ნარკოტიკი"];

  final answersB = ["ყავა", "ტკბილეული", "ემოციური კეთილდღეობა", "7-9 საათი", "30 წუთი", "0,5 ლიტრი", "აქტიური ცხოვრების წესი", "შინაგანი სიმშვიდე", "აზიანებს ღვიძლს", "ალკოჰოლი"];

  final answersC = ["მარცვლეული", "ჩიფსები", "სწორი კვება", "12-14 საათი","5 წუთი", "1 ლიტრი", "დამატებითი კალორიების მიღება", "ფიზიკური აქტივობა","გონებრივ სისუსტეს", "იოგა"];

  final answersD = ["ბეკონი და კვერცხი", "ბოსტნეული", "გონებისა და სხეულის გაძლიერება", "2-3 საათი", "20 წუთი", "10 ლიტრი", 'შოკოლადის ჭამა', "ძილის არასწორი რეჟიმი", "დამოკიდებულებას ალკოჰოლზე", 'ეკრანს მიჯაჭვულობა'];

  final correctAnswers = ["მარცვლეული", "ბოსტნეული", "ალკოჰოლი", "7-9 საათი", "20 წუთი", "2 ლიტრი", "აქტიური ცხოვრების წესი", "ძილის არასწორი რეჟიმი","ბედნიერებას",  "იოგა" ];

  var index = 0;

  var buttonAColor = Colors.blue;
  var buttonBColor = Colors.blue;
  var buttonCColor = Colors.blue;
  var buttonDColor = Colors.blue;

  var nextQuestionVisible = true;

  var alreadyAnswered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ქვიზი"),
      ),
      body: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 45,
                  margin: const EdgeInsets.only(top: 15, left: 15,),
                  child: ElevatedButton(onPressed: () {
                    setState(() {
                      index = 0;
                      buttonAColor = Colors.blue;
                      buttonBColor = Colors.blue;
                      buttonCColor = Colors.blue;
                      buttonDColor = Colors.blue;
                      score = 0;
                      alreadyAnswered = false;
                      nextQuestionVisible = true;
                    } , );
                  }, child: Container(
                      alignment: Alignment.topLeft,
                      child: const Text("თავიდან დაწყება", style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,))),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 155),
                    alignment: Alignment.topRight,
                    child: Text("ქულა: $score",style: const TextStyle(
                      fontSize: 25,
                      color: Colors.red,) )),
              ],
            ),

            Container(
                width: 400,
                height: 100,
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(questions[index], style: const TextStyle(
                  fontSize: 23,
                  color: Colors.black87,),),),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                      if (!alreadyAnswered) {
                        if (correctAnswers[index] == answersA[index]) {
                          setState(() {
                            score++;
                            buttonAColor = Colors.green;
                          });
                        } else {
                          setState(() {
                            buttonAColor = Colors.red;
                          });
                        }
                      }
                      setState(() {
                        alreadyAnswered = true;
                      });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: buttonAColor,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    width: 150,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      answersA[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersB[index]) {
                      setState(() {
                        score++;
                        buttonBColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonBColor = Colors.red;
                      });
                    }
                  }
                   setState(() {
                      alreadyAnswered = true;
                    });
                   },

                  child: Container(
                    decoration: BoxDecoration(
                        color: buttonBColor,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    width: 150,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      answersB[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                      if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersC[index]) {
                      setState(() {
                        score++;
                        buttonCColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonCColor = Colors.red;
                      });
                    }
                    setState(() {
                      alreadyAnswered = true;
                    });
                    }
                    setState(() {
                     alreadyAnswered = true;
                     });
                     },
                  child: Container(
                    decoration: BoxDecoration(
                        color: buttonCColor,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    width: 150,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      answersC[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                      if (!alreadyAnswered) {
                    if (correctAnswers[index] == answersD[index]) {
                      setState(() {
                        score++;
                        buttonDColor = Colors.green;
                      });
                    } else {
                      setState(() {
                        buttonDColor = Colors.red;
                      });
                    }
                  }
                      setState(() {
                        alreadyAnswered = true;
                      });
                  },

                  child: Container(
                    decoration: BoxDecoration(
                        color: buttonDColor,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    width: 150,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      answersD[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Visibility(
              visible: nextQuestionVisible,
              child: ElevatedButton(onPressed: (){

                if(questions.length > index + 1) {
                  setState(() {
                    index++;
                  });
                }
                if (index == questions.length - 1) {
                  {
                    setState(() {
                      nextQuestionVisible = false;
                    });
                  }
                }
                buttonAColor = Colors.blue;
                buttonBColor = Colors.blue;
                buttonCColor = Colors.blue;
                buttonDColor = Colors.blue;
                alreadyAnswered = false;
              },
                  child: const Text('შემდეგი შეკითხვა')),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => otherPage3(score: score)));
            }, child: const Text("შედეგის ნახვა"))
          ],
        ),
    );
  }
}

