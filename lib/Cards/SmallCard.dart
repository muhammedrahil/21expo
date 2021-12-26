import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallCard extends StatelessWidget {
  final void Function() NextPageAddress;
  final String TextDiscription;
  final Color TextColors;
  final String ImagePath;
  const SmallCard({
    Key? key,
    required this.NextPageAddress,
    required this.TextDiscription,
    required this.TextColors,
    required this.ImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: NextPageAddress,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all(0)),
      child: Container(
        height: 165,
        width: 155,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagePath), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15.5)),
        child: Stack(
          children: [
            Positioned(
              bottom: 50,
              left: 43.6,
              child: Text(
                TextDiscription,
                style: GoogleFonts.playfairDisplay(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: TextColors),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
