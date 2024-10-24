import 'package:flutter/material.dart';

class SeeImage extends StatefulWidget {
  const SeeImage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SeeImageState();
  }
}

class _SeeImageState extends State<SeeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 32),
        title: const Text(
          'See Image Full',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_downward),
        backgroundColor: Color.fromARGB(255, 255, 183, 3),
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: NetworkImage('https://picsum.photos/500/500'),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
