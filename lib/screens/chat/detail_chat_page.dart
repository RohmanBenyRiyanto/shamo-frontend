import 'package:flutter/material.dart';

import '../../themes/theme.dart';
import '../../widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(
          70.0,
        ),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: transparentColor,
          automaticallyImplyLeading: false,
          centerTitle: false,
          flexibleSpace: Container(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            color: backgroundColor1,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    print('back');
                  },
                  child: Container(
                    width: 20,
                    height: 50,
                    child: Center(
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Stack(
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(300.0),
                              child: Image.asset(
                                'assets/image_shop_logo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 13.0,
                              height: 13.0,
                              decoration: BoxDecoration(
                                color: greenColor,
                                borderRadius: BorderRadius.circular(100.0),
                                border: Border.all(
                                  width: 2.0,
                                  color: backgroundColor1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shoe Store',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: medium,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Online',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 14.0,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: const <Widget>[],
          title: null,
        ),
      );
    }

    Widget productPreview() {
      return Container(
        width: 225.0,
        height: 74.0,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 1.0, color: primaryColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 54,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISION 2.0',
                    style: primaryTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    '\$ ' + '58,67',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('remove product');
              },
              child: Image.asset(
                'assets/button_close.png',
                width: 22.0,
              ),
            ),
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(
                          fontSize: 14.0,
                          fontWeight: regular,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message ...',
                          hintStyle: secondaryTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(
                    child: IconButton(
                      splashColor: transparentColor,
                      highlightColor: transparentColor,
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icon_submit.png',
                        width: 19.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, This item is still available?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text: 'Good night, This item is only available in size 42 and 43',
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor3,
        appBar: header(),
        floatingActionButton: chatInput(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: content(),
      ),
    );
  }
}
