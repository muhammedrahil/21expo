import 'package:expo_21/models/books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: Booklist.length,
          itemBuilder: (context, index) {
            Books book = Booklist[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 6,
              child: Stack(
                children: [
                  Ink.image(
                    image: NetworkImage(book.imageUrl),
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 12,
                    top: 10,
                    left: 20,
                    child: Text(
                      book.Title,
                      style:
                          GoogleFonts.lato(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  Positioned(
                      top: 120,
                      left: 20,
                      child: Text(
                        book.Author,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black),
                      )),
                  const SizedBox(height: 30),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.transparent
                        ])),
                  )
                ],
              ),
            );
          }),
    );
  }
}
