import 'dart:math';

import 'package:flutter/material.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final TextEditingController _ChatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Chatbot',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'AkayaTelivigala'),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'lagi ning endi kowen?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'AkayaTelivigala',
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 255, 183, 3).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'lagi ning endi kowen?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'AkayaTelivigala',
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            const Spacer(),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your message',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
                      ),
                      child: Icon(Icons.send, color: Colors.white),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'AkayaTelivigala',
                    color: Color.fromARGB(100, 22, 41, 56),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 183, 3),
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
          ],
        ),
      ),
    );
  }
}
