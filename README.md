# flutter_application_2

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
'''C



  
###  인 앱브라우저 화면
  ```
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
```

###
 ```
  URL LAUNCHER를 사용 ---ANDROID 에서 실행시 
      <queries>
        <intent>
            <action android:name="android.intent.action.VIEW" />
            <data android:scheme="https" />
        </intent>
    </queries>
   를 android/app/src/main/AndroidManifest.xml 파일에 추가한다
```
