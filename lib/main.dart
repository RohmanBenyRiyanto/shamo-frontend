import 'package:flutter/material.dart';

import './screens/splash_screen/splash_page.dart';
import '../../screens/sign/signin/signin_page.dart';
import '../../screens/sign/signup/signup_page.dart';
import '../../screens/mainpage/main_page.dart';
import '../../screens/chat_page/detail_chat_page.dart';
import '../../screens/profile/edit_profile_page.dart';
import '../../screens/cart_page/cart_page.dart';
import '../../screens/details_product/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/detail-product': (context) => const DetailProductPage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
