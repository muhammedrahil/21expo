import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


import 'Drower.dart';

class AurTeam extends StatefulWidget {
  const AurTeam({Key? key}) : super(key: key);

  @override
  _AurTeamState createState() => _AurTeamState();
}

class _AurTeamState extends State<AurTeam> {
  late WebViewController controller;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     
      appBar: AppBar(
    
          backgroundColor: Colors.black,
        elevation: 0,
          
        title: const Text('ourteam'),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://mshaheerz.github.io/malabar2',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
          ),
         
        ],
       
      ),
    );
  }
}
