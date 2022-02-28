import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/auto_1.jpg",
    title: "Car 1",
    price: 2000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/auto_2.jpg",
    title: "Car 2",
    price: 3000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/auto_3.jpg",
    title: "Car 3",
    price: 2000,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/auto_4.jpg",
    title: "Car 4",
    price: 6000,
    bgColor: const Color(0xFFFEFBF9),
  ),
];
