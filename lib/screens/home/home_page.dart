import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/models/user_model.dart';
import 'package:shamo/providers/auth_provider.dart';
import 'package:shamo/providers/product_provider.dart';

import '../../widgets/product_tile.dart';
import '../../widgets/product_card.dart';
import '../../themes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, ${user.name}',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24.0,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    '@${user.username}',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16.0,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 54.0,
              height: 54.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: primaryColor),
                child: Text(
                  'All Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13.0,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13.0,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Training',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13.0,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Basketball',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13.0,
                    fontWeight: light,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                margin: EdgeInsets.only(right: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13.0,
                    fontWeight: light,
                  ),
                ),
              ),
              SizedBox(
                width: 14.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: productProvider.products
                    .map((product) => ProductCard(product: product),)
                    .toList(),
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14.0,
        ),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
