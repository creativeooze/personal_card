import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}

/*
Scaffold(
      body: MainScreen(),
    );
*/

class MainScreen extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/Anshuman.png'),
                ),
                SizedBox(height: 10,),
                Text(
                  'Anshuman Nanda',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                Divider(),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 15,),
                    Text(
                      '+91 8280306214',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 15,),
                    Text(
                      'anshuman.nanda.1999@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ImageIcon(
                        AssetImage(
                          'images/git.png',
                        ),
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: () {
                        const _url = "https://www.github.com/creativeooze";
                        launchURL(_url);
                      },
                      child: Text(
                        '@creativeooze',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            letterSpacing: 1.5,
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ImageIcon(
                        AssetImage(
                          'images/twitter.png',
                        ),
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: () {
                        const _url = "https://www.twitter.com/creativeooze";
                        launchURL(_url);
                      },
                      child: Text(
                        '@creativeooze',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            letterSpacing: 1.5,
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ImageIcon(
                        AssetImage(
                          'images/insta.png',
                        ),
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: () {
                        const _url = "https://www.instagram.com/creativeooze_";
                        launchURL(_url);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          '@creativeooze_',
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              letterSpacing: 1.5,
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
