import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      drawer: DrowerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.8),
              child: Image(
                image: AssetImage('assets/21 Days Logo.png'),
              ),
              //  Text(
              //   'Malbar\n hello world',
              //   style: GoogleFonts.playfairDisplay(
              //       fontSize: 45.6, fontWeight: FontWeight.w700),
              // ),
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
                          return const Content_Screen();
                        }));
                      },
                      Discription: 'Discription Discription'),
                  Cards(
                      imgPath: 'assets/Histography.jpg',
                      buttonaction: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return const Content_Screen();
                        }));
                      },
                      Discription: 'Discription Discription')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.8, top: 28.8, bottom: 16),
              child: Row(
                children: [
                  Text(
                    'popular catogary',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const SizedBox(
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
                        iconData: 'hello',
                        icons: Icons.home,
                        color: Colors.blue[200],
                        Textcolor: Colors.blue,
                        onTap: () {
                          print('hell');
                        }),
                    Padding(padding: EdgeInsets.all(1)),
                    IconsCard(
                        iconData: 'hello',
                        icons: Icons.search,
                        color: Colors.brown[200],
                        Textcolor: Colors.brown,
                        onTap: () {
                          print('hello');
                        }),
                    Padding(padding: EdgeInsets.all(1)),
                    IconsCard(
                        iconData: 'hello',
                        icons: Icons.home,
                        color: Colors.green[200],
                        Textcolor: Colors.green,
                        onTap: () {
                          print('object');
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const SizedBox(
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
                          return const Content_Screen();
                        }));
                      },
                      ImagePath: 'assets/fall18.png',
                      TextColors: Colors.black87,
                      TextDiscription: 'TextDiscriptionTextDiscription'),
                  VedioCard(
                      NextVideoAddress: () {},
                      TextDiscription: '',
                      TextColors: Colors.white,
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
                      TextDiscription: 'TextDiscriptionTextDiscription'),
                  SmallCard(
                      NextPageAddress: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return const Content_Screen();
                        }));
                      },
                      ImagePath: 'assets/fall1.png',
                      TextColors: Colors.black87,
                      TextDiscription: 'TextDiscriptionTextDiscription'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget IconsCard(
    {required String iconData,
    required IconData icons,
    required Color? color,
    required Color Textcolor,
    required void Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        margin: EdgeInsets.only(right: 19.2),
        height: 35.6,
        width: 90.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.6),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(
                5.0,
                0.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ), //BoxShad
          ],
          color: color,
        ),
        child: Stack(
          children: [
            Positioned(left: 6, top: 4, child: Icon(icons)),
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

Widget SmallCard({
  required void Function() NextPageAddress,
  required String TextDiscription,
  required Color TextColors,
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
            bottom: 10,
            left: 10,
            child: Text(
              TextDiscription,
              style: TextStyle(color: TextColors, fontSize: 10),
            ),
          )
        ],
      ),
    ),
  );
}

Widget VedioCard({
  required void Function() NextVideoAddress,
  required String TextDiscription,
  required Color TextColors,
  required String ImagePath,
}) {
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
          Positioned(left: 55,top: 35, child: Icon(Icons.video_collection,size: 50,)),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              TextDiscription,
              style: TextStyle(color: TextColors, fontSize: 10),
            ),
          )
        ],
      ),
    ),
  );
}
