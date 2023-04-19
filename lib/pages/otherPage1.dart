import 'package:flutter/material.dart';

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("პროექტის შესახებ"),),
      body: Column(
        children: [
          Center(
            child: Container(

            ),
          ),
          Container(
            child: TextButton(onPressed: () {
              Navigator.of(context). pop();
            },
                child: Text("უკან დაბრუნება")),
          ),
        ],
      ),
    );
  }
}