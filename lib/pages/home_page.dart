import 'package:flutter/material.dart';
import 'package:prato_dia/pages/cooks.dart';
import 'package:prato_dia/pages/fovourite.dart';
import 'package:prato_dia/pages/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Cooks(), FavouritePage(), ProfilePage()];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int value) {
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Favorito',
              style: TextStyle(
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Perfil',
              style: TextStyle(
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  }, child: Icon(Icons.shopping_bag),),
    );
  }
}
