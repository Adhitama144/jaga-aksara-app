import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _sex = 'Select Sex';
  final TextEditingController _birthdayController = TextEditingController();
  bool _obscureNew = true;
  bool _obscureConfirm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 50, 56),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Column(children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Join US',
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
                    'enlighten yourself by revealing',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontFamily: 'AkayaTelivigala'),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'about past glories',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontFamily: 'AkayaTelivigala'),
                  ),
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(children: [
                    TextFormField(
                      controller: _nameController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Enter your name'),
                        MinLengthValidator(8,
                            errorText: 'Name must be at least 8 characters')
                      ]).call,
                      decoration: InputDecoration(
                        hintText: 'your name',
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.account_circle_rounded),
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
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Enter your email'),
                        EmailValidator(errorText: 'Enter a valid email'),
                      ]).call,
                      decoration: InputDecoration(
                          hintText: 'your email',
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
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
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2,
                            ),
                          )),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: _obscureNew,
                      decoration: InputDecoration(
                        hintText: '••••••••',
                        labelText: 'New Password',
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureNew
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureNew = !_obscureNew;
                            });
                          },
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontFamily: 'AkayaTelivigala',
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      obscureText: _obscureConfirm,
                      decoration: InputDecoration(
                        hintText: '••••••••',
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirm
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureConfirm = !_obscureConfirm;
                            });
                          },
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontFamily: 'AkayaTelivigala',
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'AkayaTelivigala',
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
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
                                width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2),
                        ),
                      ),
                      onChanged: (String? gender) {
                        if (gender != null) {
                          _sex = gender;
                        }
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: _birthdayController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Enter your birthday'),
                      ]).call,
                      decoration: InputDecoration(
                        hintText: 'Enter your birthday',
                        labelText: 'Birthday',
                        prefixIcon: Icon(Icons.calendar_month_rounded),
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
                            width: 2,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2,
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
                      height: 24,
                    ),
                    SizedBox(
                      height: 50,
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
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'AkayaTelivigala'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 183, 3),
                              fontSize: 24,
                              fontFamily: 'AkayaTelivigala'),
                        ),
                      ),
                    ]),
                  ]),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
