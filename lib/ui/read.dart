import 'package:flutter/material.dart';
import 'see_image.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: const Text(
          'Read',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'AkayaTelivigala'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 183, 3),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.volume_up),
        backgroundColor: Color.fromARGB(255, 255, 183, 3),
        foregroundColor: Colors.white,
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
                      builder: (context) => SeeImage(),
                    ),
                  );
                },
                child: Image(
                  image: NetworkImage(
                      'https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-image-512.png'),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta pretium tincidunt. Suspendisse quam quam, sodales a purus sit amet, porta luctus lorem. Praesent eget dapibus mauris. Aenean quis egestas orci, non laoreet libero. Nulla quis augue rhoncus, pulvinar quam sit amet, dapibus nulla. Suspendisse potenti. Curabitur et tortor id eros faucibus gravida ac eget turpis. Sed facilisis magna nisi. Donec rhoncus, ante eu euismod interdum, nisl nunc consequat tortor, a consectetur augu.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'AkayaTelivigala',
                  color: Color.fromARGB(255, 22, 41, 56),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
