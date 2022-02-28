import 'package:flutter/material.dart';
import 'package:flutter_shop_mini/constants.dart';
import 'package:flutter_shop_mini/models/Category.dart';
import 'package:flutter_shop_mini/models/Product.dart';
import 'package:flutter_shop_mini/screens/home/components/categories.dart';
import 'package:flutter_shop_mini/screens/home/components/new_arrival.dart';
import 'package:flutter_shop_mini/screens/home/components/popular.dart';
import 'package:flutter_shop_mini/screens/home/components/product_card.dart';
import 'package:flutter_shop_mini/screens/home/components/search_form.dart';
import 'package:flutter_shop_mini/screens/home/components/section_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            width: 40,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/map.svg",
              width: 30,
            ),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 42,
                  color: Colors.black),
            ),
            Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            Categories(),
            SizedBox(height: defaultPadding),
            NewArrival(),
            SizedBox(height: defaultPadding),
            Popular()
          ],
        ),
      ),
    );
  }
}
