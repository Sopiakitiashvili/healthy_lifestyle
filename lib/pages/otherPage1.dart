import 'package:flutter/material.dart';

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("პროექტის შესახებ"),),
      body: Column(
        children: [
          Center(
            child:  Container(
              margin: const EdgeInsets.all(20),
              padding: const  EdgeInsets.all(20),
              child: const Text("პროექტის მიზანია ჯანსაღი ცხოვრების წესის პოპულარიზება. რაც დრო გადის, არაჯანსაღი ცხოვრების პრობლემები და შედეგები მით უფრო თვალსაჩინო ხდება, სწორედ ამისთვის შეიქმნა ქვიზი, რომელიც ემსახურება საზოგადოების ინფორმირებას ამ კუთხით.   ",
                style: TextStyle(
               fontSize: 23,
               color: Colors.black87,
              ),
              ),
            ),
          ),
          Container(
            child: TextButton(onPressed: () {
              Navigator.of(context). pop();
            },
                child: const Text("უკან დაბრუნება", style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),),),
          ),
        ],
      ),
    );
  }
}