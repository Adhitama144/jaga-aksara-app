import 'package:flutter/material.dart';
import 'history.dart';
import 'scan.dart';
import 'account.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  int _page = 1;
  Widget? CurrentPage;

  setPage(int page) {
    if (page == 0) {
      CurrentPage = History();
    } else if (page == 1) {
      CurrentPage = Scan();
    } else {
      CurrentPage = Account();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 183, 3),
        selectedItemColor: Colors.white,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
            setPage(_page);
          });
        },
      ),
      body: Center(
        child: CurrentPage,
      ),
    );
  }
}
