import 'package:flutter/material.dart';
import 'otherPage1.dart';
import 'otherPage2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 150,
              width: 400,
              child: Column(
                children: [
                  const Text("პროექტის შესახებ", style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push( MaterialPageRoute(builder: (context) => const OtherPage1()));
                      },
                      child: const Text("შესვლა", style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),),),
                  ),
                ],
              ),
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
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 150,
              width: 400,
              child: Column(
                children: [
                  const Text("ქვიზი", style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtherPage2()));
                      },
                      child: const Text("დაწყება", style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),),),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.redAccent,
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
            ),

          ),
        ],
      ),
    );
  }
}