import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Content_Screen extends StatelessWidget {
  const Content_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body:  Center(
        child: SizedBox(
              height: 120,
              child: Padding(
                  padding: EdgeInsets.only(left: 38.8, top: 14.8, bottom: 16),
                  child: Row(
                    children: [
                      Text(
                        'Coming',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 58,
                            fontWeight: FontWeight.w700,
                            color: Colors.red),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 17),
                         child: Text(
                          'soon',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 38,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF000000)),
                      ),
                       ),
                    ],
                  ),
                ),
            ),
      ),
    );
  }
}
