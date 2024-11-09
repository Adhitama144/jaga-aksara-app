import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 183, 3),
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Align(
              child: Column(
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AlexBrush',
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "gain more knowledge and",
                    style: TextStyle(
                      fontFamily: 'AkayaTelivigala',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'wisdom from the past',
                    style: TextStyle(
                      fontFamily: 'AkayaTelivigala',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    IntlPhoneField(
                      initialCountryCode: 'ID',
                      decoration: InputDecoration(
                        labelText: 'Your Phone Number',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 3,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 22, 41, 56),
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.7),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 22, 41, 56),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'AkayaTelivigala',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'don’t have an account?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 22, 41, 56),
                              fontSize: 16,
                              fontFamily: 'AkayaTelivigala'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                  fontFamily: 'AkayaTelivigala'),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Image(
              image: AssetImage(
                'assets/images/Login.png',
              ),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
