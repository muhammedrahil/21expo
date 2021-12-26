

import 'package:flutter/material.dart';

class ContantPageTemplate extends StatelessWidget {
 final String imagPath;
  final String AppBartitle;
 final String TextSample;
  const ContantPageTemplate({Key? key, required this.imagPath, required this.TextSample, required this.AppBartitle ,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppBartitle),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView(
          children: [
            SizedBox(
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(imagPath),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 10, top: 10, bottom: 10),
                child: Text(
                TextSample,
                  style: TextStyle(fontSize: 20, wordSpacing: 3,fontWeight: FontWeight.w500, ),
                ),
              ),
            ),
          ],
        ));
  }
}
