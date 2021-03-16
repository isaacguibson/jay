import 'package:flutter/material.dart';

/*Screen Imports*/
import './expenses_screen.dart';
import './profile_screen.dart';

class TabsScreen extends StatefulWidget {
  static final routeName = '/tabs-screen';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final bottomNavigationBar = BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[900],
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      );
    final bottomNavigationBarSize = bottomNavigationBar.iconSize;

    final double bodySize = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top - (bottomNavigationBarSize * 2.334));

    final List<Map<String, Object>> pages = [
      {'page': ExpensesScreen(bodySize), 'title': 'Categories'},
      {'page': ProfileScreen(bodySize), 'title': 'Favorites'},
    ];

    return Scaffold(
      body: pages[_selectedPageIndex]['page'],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 8,
        onPressed: null,
        tooltip: 'Increment',
        child: Icon( _selectedPageIndex == 0 ?
          Icons.attach_money : Icons.edit,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
