import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class iconsCards extends StatelessWidget {
  final String iconData;
  final IconData icons;
  final Color? color;
  // ignore: non_constant_identifier_names
  final Color Textcolor;
  final void Function() onTap;
  const iconsCards({
    Key? key,
    required this.iconData,
    required this.icons,
    required this.color,
    required this.Textcolor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.only(right: 49.2),
          height: 35.6,
          width: 130.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.6),
            boxShadow: const [
              BoxShadow(
                color: Colors.black87,
                offset: Offset(
                  4.0,
                  0.0,
                ),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ), //BoxShad
            ],
            color: color,
          ),
          child: Stack(
            children: [
              Positioned(left: 10, top: 7, child: Icon(icons)),
              Positioned(
                left: 39,
                top: 8,
                child: Text(
                  iconData,
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 15.6,
                      fontWeight: FontWeight.w700,
                      color: Textcolor),
                ),
              )
            ],
          )),
    );
  }
}
