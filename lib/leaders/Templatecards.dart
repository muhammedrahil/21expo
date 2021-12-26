
import 'package:expo_21/Cards/SmallCard.dart';
import 'package:expo_21/Screens/contentScreen.dart';
import 'package:expo_21/textFolder/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Template.dart';


class Templatecards extends StatelessWidget {
  const Templatecards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Leaders', style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color:  Colors.white),),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
          
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                width: 10,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return LeadersTemplate(
                                  PersonName: "ആലി മുസ്‌ലിയാർ",
                                  imagePath: "assets/fall20.png",
                                  TextDiscription: AliMusliyar);
                          }));
                        },
                        ImagePath: "assets/fall20.png",
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return LeadersTemplate(
                                  PersonName: 'വാരിയൻ കുന്നത്ത് കുഞ്ഞഹമ്മദ് ഹാജി',
                                  imagePath: 'assets/variamkunnan.png',
                                  TextDiscription: Varyam_Kunn_kunju_ahammad_haji);
                          }));
                        },
                        ImagePath: 'assets/variamkunnan.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                  ],
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                     SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                  ],
                ),
            ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                  ],
                ),
            ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/person.png',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                  ],
                ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}
