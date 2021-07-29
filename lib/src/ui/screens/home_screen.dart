import 'package:flutter/material.dart';

import 'about_us_page.dart';
import 'contact_us_page.dart';
import 'home_page.dart';
import 'service_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildHomeScreenBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHomeScreenBody() {
    late final renderWidget;

    switch (_currentItem) {
      case 1:
        renderWidget = ServicePage();
        break;
      case 2:
        renderWidget = AboutUsPage();
        break;
      case 3:
        renderWidget = ContactUsPage();
        break;
      default:
        renderWidget = HomePage();
        break;
    }

    return renderWidget;
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: _currentItem,
      iconSize: 30.0,
      elevation: 6.0,
      onTap: (item) {
        setState(() {
          _currentItem = item;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.design_services),
          label: "Services",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "About Us",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: "Contact Us",
        ),
      ],
    );
  }
}
