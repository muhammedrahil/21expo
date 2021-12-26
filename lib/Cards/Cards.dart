import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String imgPath;
  final void Function() buttonaction;
  final String discription ;
  const Cards({ Key? key,required this.imgPath,required this.discription,required this.buttonaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 330,
        margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                4.0,
                4.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Stack(
          children: [
            Positioned(
                left: 260,
                child: IconButton(
                    iconSize: 50,
                    color: Colors.white,
                    onPressed: buttonaction,
                    icon: const Icon(Icons.next_plan))),
            Positioned(
              bottom: 10,
              left: 90,
              child: Text(
                discription,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}