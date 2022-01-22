import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/providers/auth_provider.dart';

import '../../themes/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // ignore: unused_local_variable
    UserModel user = authProvider.user;
    AppBar header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        // automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_rounded),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 18.0,
            fontWeight: medium,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check_rounded,
              color: primaryColor,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13.0,
                fontWeight: regular,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              style: primaryTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
              decoration: InputDecoration(
                hintText: user.name,
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: regular,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13.0,
                fontWeight: regular,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              style: primaryTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: regular,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13.0,
                fontWeight: regular,
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: primaryTextStyle.copyWith(
                fontSize: 16.0,
                fontWeight: regular,
              ),
              decoration: InputDecoration(
                hintText: user.email,
                hintStyle: primaryTextStyle.copyWith(
                  fontSize: 16.0,
                  fontWeight: regular,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: subtitleColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      user.profilePhotoUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: SingleChildScrollView(
        child: content(),
      ),
    );
  }
}
