import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashscreenState();
  }
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 183, 3),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 50,
          right: 50,
          bottom: 80,
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/Splash.png"),
              width: double.infinity,
            ),
            SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Jaga Aksara',
                style: TextStyle(
                  fontSize: 55,
                  fontFamily: 'AlexBrush',
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontFamily: 'AkayaTelivigala'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 22, 41, 56),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 24, fontFamily: 'AkayaTelivigala'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 183, 3),
                  foregroundColor: Colors.white,
                  side: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255), width: 2),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
