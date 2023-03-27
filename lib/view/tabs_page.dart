import 'package:flutter/material.dart';
import '/view/home.dart';
import 'package:get/get.dart';
import '/controller/home_controller.dart';


class TabsPage extends StatefulWidget {
   TabsPage({super.key});
   final controller = Get.put(HomeController());
  @override
  _TabsPageState createState() => _TabsPageState();
}
final controller = Get.put(HomeController());
class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home(),
    const PageTwo(),
    const PageThree(),
    const PageFour(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      controller.category.value = 'home';
      controller.selectedCategoryIndex.value = 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: '?',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor, // set selected item color here
        unselectedItemColor: Colors.grey, // set unselected item color here
        onTap: _onItemTapped,
      ),
    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Two'),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Three'),
    );
  }
}

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page Four'),
    );
  }
}
