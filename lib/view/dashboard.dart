import 'package:flutter/material.dart';
import 'package:premiere_copy/view/historicos.dart';
import 'package:premiere_copy/view/home.dart';
import 'package:premiere_copy/view/jogos.dart';
import 'package:premiere_copy/view/perfil.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _selectedScreenIndex = 0;
  final List<Widget> _views = [
    Home(),
    Jogos(),
    Historicos(),
    Perfil(),
  ];

  _selectScreen (int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        iconSize: 15.sp,
        type: BottomNavigationBarType.fixed,
        onTap: _selectScreen,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.house),
              title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Jogos")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer_outlined),
              title: Text("Históricos")
          ),BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Perfil")
          ),
        ],
      ),
    );
  }
}
