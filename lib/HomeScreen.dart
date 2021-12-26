import 'package:expo_21/Cards/Cards.dart';
import 'package:expo_21/Cards/IconsCard.dart';
import 'package:expo_21/Cards/SmallCard.dart';
import 'package:expo_21/Cards/vedioCard.dart';
import 'package:expo_21/contentFolder/contentPageTemplate.dart';
import 'package:expo_21/leaders/Template.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'textFolder/texts.dart';
import 'Screens/Drower.dart';
import 'Screens/contentScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
//heading Section

            const Padding(
              padding: EdgeInsets.only(left: 15.8),
              child: Image(
                image: AssetImage('assets/21 Days Logo.png'),
              ),
            ),

//heading Section
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Big Cards Sections
                  Cards(
                    imgPath: 'assets/Article.jpg',
                    discription: 'Discription Discription',
                    buttonaction: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return ContantPageTemplate(
                            AppBartitle: 'Articles',
                            imagPath: 'assets/Article.jpg',
                            TextSample: Article);
                      }));
                    },
                  ),
                  Cards(
                    imgPath: 'assets/Histography.jpg',
                    discription: 'Discription Discription',
                    buttonaction: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return ContantPageTemplate(
                            AppBartitle: 'Histography',
                            imagPath: 'assets/Histography.jpg',
                            TextSample: History);
                      }));
                    },
                  ),
                  Cards(
                    imgPath: 'assets/Histography.jpg',
                    discription: 'Discription Discription',
                    buttonaction: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return ContantPageTemplate(
                            AppBartitle: 'Histography',
                            imagPath: 'assets/Histography.jpg',
                            TextSample: History);
                      }));
                    },
                  )

                  // Big Cards Sections
                ],
              ),
            ),
            //Subheading Section
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
            //Subheading Section
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
                    //IconCards
                    iconsCards(
                      iconData: 'Reference',
                      icons: Icons.book,
                      color: Colors.blue[200],
                      Textcolor: Colors.blue,
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return const Content_Screen();
                        }));
                      },
                    ),

                    const Padding(padding: EdgeInsets.all(1)),
                    iconsCards(
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
                    //IconCards
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
                  //smallCards
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
                  //smallCards
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
