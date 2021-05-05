import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: kCustomClipper(),
              child: Container(
                width: double.infinity,
                height: 400.0,
                color: Colors.blue,
              ),
            ),
            // Positioned(height: -380, child: Opacity()),
            SafeArea(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 130.0,
                  ),
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/pAY0TGyy8KJ_2qkohpGORf910CRI1-RaQqgjZFkSDVosA5sCS4K8GQ-nruQmpxvfEDIXwZZetmnQVSExNJcizHvI9VnRLw-uQYh0-RQfx8elzIt56RDEb4JzcmgnyppaFmdZmIGkIfB8y1EFxrZ7GV2euo8MtGC_XAQxqf8r3K1hljWuuefN6auVlI0daHbk7MLzGw0rnGAXESp7dgX_oYgngTFXHgba1oONbpV68KTa_myGs4hSqwrYpIQMqKloObpvnQw01G6590xDzvSYMXwkjUxSTzWutzyZZD4W_ZEywU3RqsXPs9l7LHjIQP6kl87tWwU7WyL3eBPYmv4r0_zdl8og_ujhwDFBxJ2MvtNPiH0We7EsL0AVQYfbTq4GXaf3WDZnz7gaAaXmrcUzxaxQHPi061Pxh4j2YH-YzSa9NT15WHlVjYHYaPYgyopHNvH_YFGTfTKBim4CczH6FYAG-iY812gTJbU59WIKTa6gHi393KVenTJ7t_a-rQkAFXZ_pggKyl9v2Xh3IHEleaOA6lrwEjHSJSyGkg5u79Dfj9zfqMq7QA1NRernl_aYodKo3l_scMlHDuvt32UW0OD7cds1jLt8-TpYiNE1-hPDsFl_GBjwUw0aPHo5IPA_LC6CD15lSDysCTmsl0hCME1YdhuH80hs7zQRzTsZ5Nq4YNlSy65y_Y_kU3BFvdM_yKxOaWVHBDkmLn8M0B4IEXU=w1020-h1530-no?authuser=0",
                        ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Abeid Juma",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Software Engineer passionate automating and solving complex and simple tasks through technology.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Mobile\n',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 14.0)),
                          TextSpan(
                              text: 'Flutter | Java',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ))
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'FrontEnd\n',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 14.0)),
                          TextSpan(
                              text: 'ReactJS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ))
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Backend\n',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 14.0)),
                          TextSpan(
                              text: 'PHP | Laravel',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ))
                        ]),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class kCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 160);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
