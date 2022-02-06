import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
      ),
      body: WebView(
        initialUrl: 'https://mshaheerz.github.io/malabar2/',
        javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller){
        this.controller = controller;
      },
        
      
      
      ),
    );
  }
}
