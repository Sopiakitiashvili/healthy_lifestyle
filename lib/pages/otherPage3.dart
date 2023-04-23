import 'package:flutter/material.dart';

class otherPage3 extends StatelessWidget {
  const otherPage3({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("შედეგი"),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 350,
            margin: const EdgeInsets.all(20),
            padding: const  EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.greenAccent,
                  blurRadius: 15,
                  offset: Offset(15, 15),
                ),
              ],
            ),
            child: Text("თქვენი შედეგი არის: $score/10",
              style: const TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),)),
      ),
    );
  }
}
