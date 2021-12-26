
import 'package:expo_21/Cards/SmallCard.dart';
import 'package:expo_21/Screens/contentScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class BooksTemplate extends StatelessWidget {
  const BooksTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Books', style: GoogleFonts.playfairDisplay(
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
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/books.jpg',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/books.jpg',
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
                        ImagePath: 'assets/books.jpg',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                     SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/books.jpg',
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
                        ImagePath: 'assets/books.jpg',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/books.jpg',
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
                        ImagePath: 'assets/books.jpg',
                        TextColors: Colors.white,
                        TextDiscription: ''),
                    SmallCard(
                        NextPageAddress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return const Content_Screen();
                          }));
                        },
                        ImagePath: 'assets/books.jpg',
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
