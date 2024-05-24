
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Tab1Screen(),
    const Tab2Screen(),
    const Tab3Screen(),
    const Tab4Screen(),
    const Tab5Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Instagram'),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.movie_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ''),
          ],
        ),
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 80,
                color: Colors.grey,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: const Divider(
              height: 1,
              color: Colors.grey,
            ),
          ),
          Flexible(
            child: ListView(
              children: [
                Image.asset(
                  'assets/images/aa.jpeg',
                ),
                Image.asset(
                  'assets/images/aa.jpeg',
                ),
                Image.asset(
                  'assets/images/aa.jpeg',
                ),
                Image.asset(
                  'assets/images/aa.jpeg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Tab2Screen extends StatelessWidget {
  const Tab2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('q'),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('w'),
    );
  }
}

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('e'),
    );
  }
}

class Tab5Screen extends StatelessWidget {
  const Tab5Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('r'),
    );
  }
}
