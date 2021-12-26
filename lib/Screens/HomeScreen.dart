import 'package:expo_21/contentFolder/contentPageTemplate.dart';
import 'package:expo_21/leaders/Template.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../textFolder/texts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Drower.dart';
import 'contentScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  Widget Cards(
      {required String imgPath,
      required void Function() buttonaction,
      // ignore: non_constant_identifier_names
      required String Discription}) {
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
              left: 100,
              child: Text(
                Discription,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrowerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 15.8),
              child: Image(
                image: AssetImage('assets/21 Days Logo.png'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Cards(
                      imgPath: 'assets/Article.jpg',
                      buttonaction: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return ContantPageTemplate(
                              AppBartitle: 'Articles',
                              imagPath: 'assets/Article.jpg',
                              TextSample: Article);
                        }));
                      },
                      Discription: 'Discription Discription'),
                  Cards(
                      imgPath: 'assets/Histography.jpg',
                      buttonaction: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return ContantPageTemplate(
                              AppBartitle: 'Histography',
                              imagPath: 'assets/Histography.jpg',
                              TextSample: History);
                        }));
                      },
                      Discription: 'Discription Discription')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.8, top: 28.8, bottom: 16),
              child: Row(
                children: [
                  Text(
                    'popular catogary',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF000000)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 10,
              ),
            ),
            SizedBox(
              height: 45.6,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    IconsCard(
                        iconData: 'Reference',
                        icons: Icons.book,
                        color: Colors.blue[200],
                        Textcolor: Colors.blue,
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        }),
                    const Padding(padding: EdgeInsets.all(1)),
                    IconsCard(
                        iconData: 'Leaders',
                        icons: Icons.person,
                        color: Colors.green[200],
                        Textcolor: Colors.green,
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return LeadersTemplate(
                                PersonName: "PersonName",
                                imagePath: "assets/fall17.png",
                                TextDiscription: History);
                          }));
                        }),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 10,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SmallCard(
                      NextPageAddress: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return ContantPageTemplate(
                              AppBartitle: 'Books',
                              imagPath: 'assets/fall18.png',
                              TextSample: Article);
                        }));
                      },
                      ImagePath: 'assets/fall18.png',
                      TextColors: Colors.black,
                      TextDiscription: 'Books'),
                  VedioCard(
                      icon: Icons.video_library,
                      NextVideoAddress: () {},
                      TextDiscription: '',
                      IconColors: Colors.grey,
                      ImagePath: 'assets/fall4.png')
                ],
              ),
            ),
            SizedBox(
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
                      ImagePath: 'assets/fall4.png',
                      TextColors: Colors.white,
                      TextDiscription: ''),
                  SmallCard(
                      NextPageAddress: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return const Content_Screen();
                        }));
                      },
                      ImagePath: 'assets/fall1.png',
                      TextColors: Colors.black87,
                      TextDiscription: ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget IconsCard(
    {required String iconData,
    required IconData icons,
    required Color? color,
    // ignore: non_constant_identifier_names
    required Color Textcolor,
    required void Function() onTap}) {
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

// ignore: non_constant_identifier_names
Widget SmallCard({
  // ignore: non_constant_identifier_names
  required void Function() NextPageAddress,
  // ignore: non_constant_identifier_names
  required String TextDiscription,
  // ignore: non_constant_identifier_names
  required Color TextColors,
  // ignore: non_constant_identifier_names
  required String ImagePath,
}) {
  return ElevatedButton(
    onPressed: NextPageAddress,
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
            bottom: 50,
            left: 43.6,
            child: Text(
              TextDiscription,
              style: GoogleFonts.playfairDisplay(
                  fontSize: 25, fontWeight: FontWeight.w900, color: TextColors),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget VedioCard(
    {required void Function() NextVideoAddress,
    required String TextDiscription,
    required Color IconColors,
    required String ImagePath,
    required IconData icon}) {
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
