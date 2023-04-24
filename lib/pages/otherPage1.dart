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
              child: const Text("პროექტი მომზადდა USAID-ის სამოქალაქო განათლების პროგრამის ფარგლებში, პარტნიორი ორგანიზაცია ჯეოლაბის კურსის ფინალურ ეტაპზე. პროგრამა ხორციელდება PH international-ის მიერ, აშშ საერთაშორისო განვითარების სააგენტოს (USAID) დაფინანსებითა და საქართველოს განათლებისა და მეცნიერების სამინისტროს მხარდაჭერით. ",
                style: TextStyle(
               fontSize: 20,
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