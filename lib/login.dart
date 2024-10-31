import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 183, 3),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 20,
              right: 20,
            ),
            child: Column(children: [
              Container(
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Welcoma Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 55,
                          fontFamily: 'AlexBrush'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'gain more knowledge and',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'wisdom from the past',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(children: [
                      TextFormField(
                        controller: _emailController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter your email'),
                          EmailValidator(errorText: 'Enter a valid email'),
                        ]).call,
                        decoration: InputDecoration(
                            hintText: 'you@gmail.com',
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_rounded),
                            floatingLabelStyle: TextStyle(
                              color: Color.fromARGB(255, 22, 41, 56),
                              fontSize: 24,
                              fontFamily: 'AkayaTelivigala',
                            ),
                            labelStyle: TextStyle(
                              fontFamily: 'AkayaTelivigala',
                              color: Color.fromARGB(100, 22, 41, 56),
                            ),
                            hintStyle: TextStyle(
                              fontFamily: 'AkayaTelivigala',
                              color: Color.fromARGB(100, 22, 41, 56),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 41, 56),
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 22, 41, 56),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color.fromARGB(100, 22, 41, 56),
                                width: 2,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: '••••••••',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.key),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color.fromARGB(255, 22, 41, 56),
                            fontSize: 24,
                            fontFamily: 'AkayaTelivigala',
                          ),
                          hintStyle: TextStyle(
                            fontFamily: 'AkayaTelivigala',
                            color: Color.fromARGB(100, 22, 41, 56),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 22, 41, 56),
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 22, 41, 56),
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(100, 22, 41, 56),
                              width: 2,
                            ),
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
                            'Login',
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'AkayaTelivigala'),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 22, 41, 56),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                                color: Color.fromARGB(100, 22, 41, 56),
                                fontSize: 24,
                                fontFamily: 'AkayaTelivigala'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 24,
                                  fontFamily: 'AkayaTelivigala'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage('assets/images/Login.png'),
                        width: double.infinity,
                      ),
                    ]),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
