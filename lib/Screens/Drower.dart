import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     
      elevation: 0,
      child: ListView(children:  [
        // DrawerHeader(child: Text('expo',style: GoogleFonts.playfairDisplay(
        //             fontSize: 45.6, fontWeight: FontWeight.w700),),),

          SizedBox(
            height: 120,
            child: Padding(
                padding: EdgeInsets.only(left: 38.8, top: 14.8, bottom: 16),
                child: Row(
                  children: [
                    Text(
                      'F',
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 58,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 17),
                       child: Text(
                        'expo',
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
        
         ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.home,size: 40,),
                    title: Text('Home'),
                   
        ),
        Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.admin_panel_settings,size: 40,),
                    title: Text('Privacy Policy'),
                    
        ),
         Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.person,size: 40,),
                    title: Text('Our Team'),
                    subtitle: Text('data'),
        ),
          Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.star,size: 40,),
                    title: Text('Rate'),
                  
        ),
          Divider(thickness: 1,),
        ListTile(
           hoverColor: Colors.grey,
          onTap: (){},
          leading:Icon(Icons.cottage,size: 40,),
                    title: Text('Collage'),
                   
        ),
        
      ],),
      
    );
  }
}