import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     
      elevation: 0,
      child: ListView(children:  [
        DrawerHeader(child: Text('expo',style: GoogleFonts.playfairDisplay(
                    fontSize: 45.6, fontWeight: FontWeight.w700),),),
        
         ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('data'),
                    subtitle: Text('data'),
        ),
        Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('data'),
                    subtitle: Text('data'),
        ),
         Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('data'),
                    subtitle: Text('data'),
        ),
          Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('data'),
                    subtitle: Text('data'),
        ),
          Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('data'),
                    subtitle: Text('data'),
        ),
        
      ],),
      
    );
  }
}