import 'package:flutter/material.dart';

class VedioCard extends StatelessWidget {
  final void Function() NextVideoAddress;
    final String TextDiscription;
    final Color IconColors;
    final String ImagePath;
    final IconData icon;
  const VedioCard({ Key? key,
   required this.NextVideoAddress,
    required this.TextDiscription,
    required this.IconColors,
    required this.ImagePath,
    required this.icon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: NextVideoAddress,
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0)),
    child: Container(
      height: 124,
      width: 155,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(ImagePath), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15.5)),
      child: Stack(
        children: [
          Positioned(
              left: 55,
              top: 35,
              child: Icon(icon, size: 50, color: IconColors)),
        ],
      ),
    ),
  );
  }
}