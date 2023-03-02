import 'package:flutter/material.dart';
import 'package:my_fyp/pages/feedback.dart';
import 'package:my_fyp/pages/home/home_page.dart';
import 'package:my_fyp/pages/profile.dart';
import 'package:my_fyp/pages/chat_gpt.dart';
//this is bottom navigation bar
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final screens=[
    const HomePage(),
   const ChatGPTApp(),
    const FeedBack(),
    const Profile(),
  ];
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home,color:Color.fromARGB(222, 107, 42, 220),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search_outlined,color:Color.fromARGB(222, 107, 42, 220),),
            label: 'Chat GPT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined),
            activeIcon: Icon(Icons.manage_accounts_rounded,color: Color.fromARGB(222, 107, 42, 220),),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback_outlined),
            activeIcon: Icon(Icons.feedback_rounded,color: Color.fromARGB(222, 107, 42, 220),),
            label: 'Feedback',
          ),
         
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(222, 107, 42, 220),
        unselectedItemColor: Colors.black87,
        onTap: _onItemTapped,
        iconSize: 30,
        selectedFontSize: 20,
        
      ),
    );
  }
}