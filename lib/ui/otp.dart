import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String otpCode = '';

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 255, 183, 3),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Verification Code',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 22, 41, 56),
                    fontFamily: 'AkayaTelivigala'),
              ),
              SizedBox(height: 8),
              Text(
                'Please enter the OTP code',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 22, 41, 56),
                    fontFamily: 'AkayaTelivigala'),
              ),
              Text(
                'which has been sent to your WhatsApp number',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 22, 41, 56),
                    fontFamily: 'AkayaTelivigala'),
              ),
              SizedBox(height: 24),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                onCompleted: (pin) {
                  setState(() {
                    otpCode = pin;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
