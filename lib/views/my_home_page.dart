
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  double _currentSliderValue = 20.0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                'assets/images/image.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const Text(
                    'Акылдуу бала',
                    style: TextStyle(
                      color: Color(0xff0E5EA3),
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    'Кыргыз эл жомогу',
                    style: TextStyle(
                      color: Color(0xff0E5EA3),
                      fontSize: 22,
                    ),
                  ),
                  Slider(
                    inactiveColor: const Color(0xff96C5DD),
                    activeColor: const Color(0xff24219C),
                    value: _currentSliderValue,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '00:20',
                          style: TextStyle(
                            color: Color(0xff24219C),
                          ),
                        ),
                        Text(
                          '02:20',
                          style: TextStyle(
                            color: Color(0xff24219C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/back.png'),
                      Image.asset('assets/images/play.png'),
                      Image.asset('assets/images/forward.png'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                    style: TextStyle(
                      color: Color(0xff0E5EA3),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png'),
            label: 'Үй',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/layout.png'),
            label: 'Категориялар',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/book.png'),
            label: 'Жомокторум',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/profile.png'),
            label: 'Профиль',
          ),
        ],
        selectedItemColor: const Color(0xff0E5EA3),
        unselectedItemColor: const Color(0xff0E5EA3),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
