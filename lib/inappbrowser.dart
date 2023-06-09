import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://flutter.dev');

class Browesr extends StatefulWidget {
  const Browesr({super.key});

  @override
  State<Browesr> createState() => _BrowesrState();
}

class _BrowesrState extends State<Browesr> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('하고싶은것 찾아보기'),
      ),
        body: Center(
        child: ElevatedButton(
          onPressed: () async{ 
            final url = Uri.parse('https://www.google.com');
            if(await canLaunchUrl(url)) {
              launchUrl(url, mode:LaunchMode.externalApplication);
            }
           },
          child: Text("브라우저 이동"),
        ),
      
        )
    );
}
}