import 'package:flutter/material.dart';

import '../mainpage/fixfloatingbutton/fixfloatingbutton.dart';

import '../chat_page/chat_page.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';
import '../wishlist/wishlist_page.dart';

import '../../themes/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> body = [
    const HomePage(),
    const ChatPage(),
    const WishListPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20.0,
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget CustomBottomNav() {
      // ignore: unused_local_variable
      final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(defaultMargin)),
        child: SizedBox(
          height: 70,
          child: BottomAppBar(
            color: Colors.transparent,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10.0,
            clipBehavior: Clip.antiAlias,
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: backgroundColor4,
                currentIndex: currentIndex,
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                    // ignore: avoid_print
                    print(value);
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icon_home.png',
                      width: 21,
                      color:
                          currentIndex == 0 ? primaryColor : const Color(0xff808191),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                        color: currentIndex == 1
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Image.asset(
                        'assets/icon_wishlist.png',
                        width: 20,
                        color: currentIndex == 2
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icon_profile.png',
                      width: 18,
                      color:
                          currentIndex == 3 ? primaryColor : const Color(0xff808191),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      extendBody: true,
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      body: SafeArea(
        child: body[currentIndex],
        bottom: false,
      ),
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
