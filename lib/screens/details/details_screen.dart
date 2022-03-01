import 'package:flutter/material.dart';
import 'package:flutter_shop_mini/constants.dart';
import 'package:flutter_shop_mini/models/Product.dart';
import 'package:flutter_shop_mini/screens/details/components/color_dot.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/images/heart.svg",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 1.5, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius * 3),
                topRight: Radius.circular(defaultBorderRadius * 3),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  ),
                  const Text(
                    "Colors",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Row(
                    children: [
                      ColorDot(
                        color: const Color(0xFFBEE8EA),
                        isActive: false,
                        press: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFF141D4A),
                        isActive: true,
                        press: () {},
                      ),
                      ColorDot(
                        color: const Color(0xFFF4E5C3),
                        isActive: false,
                        press: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 1.5),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text("Add to cart"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
