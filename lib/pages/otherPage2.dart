import 'package:flutter/material.dart';

class OtherPage2 extends StatelessWidget {
  const OtherPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ქვიზი"),
      ),
      body: Column(
        children: [
           Text("Other Page2"),
        ],
      ),
    );
  }
}