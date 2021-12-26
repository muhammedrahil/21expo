import 'package:flutter/material.dart';


// ignore: must_be_immutable
class LeadersTemplate extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late String PersonName;
  late String imagePath;
  // ignore: non_constant_identifier_names
  late String TextDiscription;
   LeadersTemplate({ Key? key, required this.PersonName, required this.imagePath, required this.TextDiscription }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(PersonName),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 55,right: 55,top: 15),
              child: SizedBox(
                 
                child: Container(
                  height: 350,
                 
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover),
                  )
                ),
              ),
            ),
             SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15, right: 10, top: 27, bottom: 10),
                child: Text(
                TextDiscription,
                  style: TextStyle(fontSize: 20, wordSpacing: 3,fontWeight: FontWeight.w500, ),
                ),
              ),
            ),
          ],
        ));
  }
}