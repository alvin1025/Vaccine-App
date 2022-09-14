import 'package:flutter/material.dart';
import 'package:vaccine/home/home.dart';
import 'package:vaccine/home/information.dart';
import 'package:vaccine/home/profile.dart';
import 'package:vaccine/home/search.dart';
import 'package:vaccine/style.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customNav() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: ((value) {
              setState(() {
                print(value);
                currentIndex = value;
              });
            }),
            backgroundColor: primaryColor,
            selectedItemColor: blackColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.home)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.search)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.folder_copy_outlined)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(Icons.people)),
                  label: ''),
            ]),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();

        case 1:
          return const SearchPage();

        case 2:
          return const InformationPage();

        case 3:
          return const ProfilePage();

        default:
          return const HomePage();
      }
    }

    return Scaffold(bottomNavigationBar: customNav(), body: body());
  }
}
