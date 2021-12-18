import 'package:flutter/material.dart';

import '../themes/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Image.asset(
                    'assets/image_shop_logo.png',
                    width: 54.0,
                    height: 54.0,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 15.0,
                          fontWeight: regular,
                        ),
                      ),
                      Text(
                        'Good night, This item is on ...',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14.0,
                          fontWeight: light,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              thickness: 1.0,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
