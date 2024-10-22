import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl/intl.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AccountState();
  }
}

class _AccountState extends State<Account> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _sex = 'Select Sex';
  final TextEditingController _birthdayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 50,
            right: 50,
            bottom: 24,
          ),
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 41, 56),
                          fontSize: 32,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      children: [
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
                          height: 24,
                        ),
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
                            floatingLabelStyle: TextStyle(
                                fontSize: 24,
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 22, 41, 56),
                                    width: 2)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 22, 41, 56),
                                  width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(100, 22, 41, 56),
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
                                color: Color.fromARGB(100, 22, 41, 56),
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
                              'Update',
                              style: TextStyle(
                                  fontSize: 24, fontFamily: 'AkayaTelivigala'),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 255, 183, 3),
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              width: double.infinity,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 41, 56),
                          fontSize: 32,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '••••••••',
                            labelText: 'Old Password',
                            prefixIcon: Icon(Icons.key),
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
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '••••••••',
                            labelText: 'New Password',
                            prefixIcon: Icon(Icons.key),
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
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '••••••••',
                            labelText: 'Confirm Password',
                            prefixIcon: Icon(Icons.key),
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
                                color: Color.fromARGB(100, 22, 41, 56),
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
                              'Change Password',
                              style: TextStyle(
                                  fontSize: 24, fontFamily: 'AkayaTelivigala'),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 255, 183, 3),
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Manage Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 41, 56),
                          fontSize: 32,
                          fontFamily: 'AkayaTelivigala'),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 24, fontFamily: 'AkayaTelivigala'),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 212, 49, 0),
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
