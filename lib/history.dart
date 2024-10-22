import 'package:flutter/material.dart';
import 'read.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HistoryState();
  }
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'History',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Read(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                        offset: const Offset(2, 4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromARGB(100, 22, 41, 56),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image(
                          image: NetworkImage(
                              'https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-image-512.png'),
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                '30/12/2045',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 22, 41, 56),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'AkayaTelivigala',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Lorem ipsum dolor sit amet personal hyperbolla idim ...',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 22, 41, 56),
                                  fontSize: 14,
                                  fontFamily: 'AkayaTelivigala',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
