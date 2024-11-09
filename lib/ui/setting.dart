import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _sex = 'Select Sex';
  final TextEditingController _birthdayController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: const Text(
          'Setting',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 25,
            right: 25,
          ),
          child: Column(
            children: [
              Align(
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 22, 41, 56),
                                  fontSize: 30,
                                  fontFamily: 'AkayaTelivigala'),
                            ),
                          ),
                          SizedBox(height: 10),
                          IntlPhoneField(
                            initialCountryCode: 'ID',
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 41, 56)),
                            dropdownTextStyle: TextStyle(
                              color: Color.fromARGB(255, 22, 41, 56)
                                  .withOpacity(0.7),
                            ),
                            decoration: InputDecoration(
                              labelText: 'Your Phone Number',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 22, 41, 56)
                                    .withOpacity(0.7),
                                fontFamily: 'AkayaTelivigala',
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 22, 41, 56),
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
                                  color: Color.fromARGB(255, 22, 41, 56)
                                      .withOpacity(0.7),
                                  width: 3,
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 41, 56)),
                            decoration: InputDecoration(
                              hintText: 'your name',
                              labelText: 'Name',
                              prefixIcon: Icon(
                                Icons.account_circle_rounded,
                              ),
                              floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(255, 22, 41, 56),
                                fontSize: 24,
                                fontFamily: 'AkayaTelivigala',
                              ),
                              labelStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 22, 41, 56),
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
                                  color: Color.fromARGB(255, 22, 41, 56)
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
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              labelStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              floatingLabelStyle: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'AkayaTelivigala',
                                  color: Color.fromARGB(255, 22, 41, 56)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 22, 41, 56),
                                      width: 3)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 22, 41, 56),
                                    width: 3),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 22, 41, 56)
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
                              ),
                              floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(255, 22, 41, 56),
                                fontSize: 24,
                                fontFamily: 'AkayaTelivigala',
                              ),
                              labelStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'AkayaTelivigala',
                                color: Color.fromARGB(255, 22, 41, 56),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 22, 41, 56),
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
                                  color: Color.fromARGB(255, 22, 41, 56)
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
                                'Update',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'AkayaTelivigala'),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 183, 3),
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Manage Account',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 22, 41, 56),
                                        fontSize: 30,
                                        fontFamily: 'AkayaTelivigala'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Logout',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'AkayaTelivigala'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 212, 49, 0),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
