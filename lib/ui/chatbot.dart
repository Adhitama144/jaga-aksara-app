import 'package:flutter/material.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: const Text(
          'Chatbot',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                _buildChatBubble("Hello! How can I assist you?", false),
                _buildChatBubble("Can you help me with Flutter?", true),
                _buildChatBubble(
                    "Of course! What do you need help with?", false),
                _buildChatBubble("Can you help me with Flutter?", true),
                _buildChatBubble(
                    "Of course! What do you need help with?", false),
                _buildChatBubble("Can you help me with Flutter?", true),
                _buildChatBubble(
                    "Of course! What do you need help with?", false),
                _buildChatBubble("Can you help me with Flutter?", true),
                _buildChatBubble(
                    "Of course! What do you need help with?", false),
                _buildChatBubble("Can you help me with Flutter?", true),
                _buildChatBubble(
                    "Of course! What do you need help with?", false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 22, 41, 56).withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 183, 3),
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
                          color:
                              Color.fromARGB(255, 255, 183, 3).withOpacity(0.7),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.send),
                  color: const Color.fromARGB(255, 255, 183, 3),
                  onPressed: () {}, // Tidak ada logika, hanya UI
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String text, bool isSentByMe) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color:
              isSentByMe ? Color.fromARGB(255, 255, 183, 3) : Colors.grey[300],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSentByMe ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
