import 'package:flutter/material.dart';

import 'components/tabHome.dart';
import 'components/tabNotas.dart';
import 'components/tabPreguntas.dart';
import 'components/tabVideos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      _tabHome(),
      _tabVideos(),
      _tabPreguntas(),
      _tabNotas(),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Eko proTips',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Color.fromRGBO(47, 93, 98, 1),
        ),
        body: tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: 'Videos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined),
              label: 'Preguntas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet_outlined),
              label: 'Notas',
            ),
          ],
          selectedItemColor: Color.fromRGBO(167, 196, 188, 1),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(47, 93, 98, 1),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _tabHome() {
    return TabHome();
  }

  Widget _tabVideos() {
    return TabVideos();
  }

  Widget _tabPreguntas() {
    return TabPreguntas();
  }

  Widget _tabNotas() {
    return TabNotas();
  }
}
