import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _sex = 'Select Sex';
  final TextEditingController _birthdayController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 41, 56),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
          right: 25,
        ),
        child: Column(
          children: [
            Align(
              child: Column(
                children: [
                  Text(
                    'Join US',
                    style: TextStyle(
                      fontSize: 52,
                      fontFamily: 'AlexBrush',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    'enlighten yourself by revealing',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'AkayaTelivigala',
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    'the secrets of your past',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'AkayaTelivigala',
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  IntlPhoneField(
                    initialCountryCode: 'ID',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    dropdownTextStyle: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                    decoration: InputDecoration(
                      labelText: 'Your Phone Number',
                      labelStyle: TextStyle(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                        fontFamily: 'AkayaTelivigala',
                      ),
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
                  TextFormField(
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    decoration: InputDecoration(
                      hintText: 'your name',
                      labelText: 'Name',
                      prefixIcon: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.white,
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontFamily: 'AkayaTelivigala',
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.7),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    items: <String>['Select Sex', 'Male', 'Female']
                        .map(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    value: _sex,
                    decoration: InputDecoration(
                      hintText: 'Select Sex',
                      labelText: 'Sex',
                      prefixIcon: Icon(
                        Icons.male,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      floatingLabelStyle: TextStyle(
                          fontSize: 24,
                          fontFamily: 'AkayaTelivigala',
                          color: Color.fromARGB(255, 255, 255, 255)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.7),
                            width: 3),
                      ),
                    ),
                    onChanged: (String? gender) {
                      if (gender != null) {
                        _sex = gender;
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your birthday',
                      labelText: 'Birthday',
                      prefixIcon: Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.white,
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontFamily: 'AkayaTelivigala',
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      hintStyle: TextStyle(
                        fontFamily: 'AkayaTelivigala',
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.7),
                          width: 3,
                        ),
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          _birthdayController.text = formattedDate;
                        });
                      } else {}
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 24, fontFamily: 'AkayaTelivigala'),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 183, 3),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'AkayaTelivigala'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 183, 3),
                              fontSize: 16,
                              fontFamily: 'AkayaTelivigala'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
