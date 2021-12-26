import 'package:flutter/material.dart';


class Books{
String Title;
String Description;
String Author;
String imageUrl;


Books({
  required this.Title,
  required this.Description,
  required this.Author,
  required this.imageUrl
});
}

List <Books> Booklist = [

Books(Title: '1921', Description: 'Book of revolution', Author: 'VARIYAMKUNNATH', 
imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/71clvZLIRZL.jpg'),


Books(Title: '1921', Description: 'Book of revolution', Author: 'VARIYAMKUNNATH', 
imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Variyam_kunnath_photo.jpg/389px-Variyam_kunnath_photo.jpg'),


Books(Title: '1921', Description: 'Book of revolution', Author: 'VARIYAMKUNNATH', 
imageUrl: 'https://images-na.ssl-images-amazon.com/images/I/41S4bZHD22L._SX321_BO1,204,203,200_.jpg'),

Books(Title: '1921', Description: 'Book of revolution', Author: 'VARIYAMKUNNATH', 
imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Variyam_kunnath_photo.jpg/389px-Variyam_kunnath_photo.jpg')


];