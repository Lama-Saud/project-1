import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
  final String imagePath;
  final String price;
  final Color color;

  Product(
      {required this.id,
      required this.title,
      required this.color,
      // required this.desc,
      required this.imagePath,
      required this.price});
}

List<Product> products = [
  Product(
    id: "1",
    color: const Color(0xFF81bcdf),
    title: "Product #1",
    imagePath: "lib/assets/toy1.png",
    price: "120",
  ),
  Product(
    id: "2",
    color: const Color(0xFF81bcdf),
    title: "Product #2",
    imagePath: "lib/assets/toy2.png",
    price: "120",
  ),
  Product(
    id: "3",
    color: const Color(0xFF81bcdf),
    title: "Product #3",
    imagePath: "lib/assets/toy3.png",
    price: "120",
  ),
  Product(
    id: "4",
    color: const Color(0xFF81bcdf),
    title: "Product #4",
    imagePath: "lib/assets/toy4.png",
    price: "120",
  ),
  Product(
    id: "5",
    color: const Color(0xFF81bcdf),
    title: "Product #5",
    imagePath: "lib/assets/toy5.png",
    price: "120",
  ),
  Product(
    id: "6",
    color: const Color(0xFF81bcdf),
    title: "Product #6",
    imagePath: "lib/assets/toy6.png",
    price: "120",
  ),
  Product(
    id: "7",
    color: const Color(0xFF81bcdf),
    title: "Product #7",
    imagePath: "lib/assets/toy7.png",
    price: "120",
  ),
  Product(
    id: "8",
    color: const Color(0xFF81bcdf),
    title: "Product #8",
    imagePath: "lib/assets/toy8.png",
    price: "120",
  ),
  Product(
    id: "9",
    color: const Color(0xFF81bcdf),
    title: "Product #9",
    imagePath: "lib/assets/toy6.png",
    price: "120",
  ),
  Product(
    id: "10",
    color: const Color(0xFF81bcdf),
    title: "Product #10",
    imagePath: "lib/assets/toy10.png",
    price: "120",
  ),
  Product(
    id: "11",
    color: const Color(0xFF81bcdf),
    title: "Product #11",
    imagePath: "lib/assets/toy11.png",
    price: "120",
  ),
  Product(
    id: "12",
    color: const Color(0xFF81bcdf),
    title: "Product #12",
    imagePath: "lib/assets/toy12.png",
    price: "120",
  ),
  Product(
    id: "13",
    color: const Color(0xFF81bcdf),
    title: "Product #13",
    imagePath: "lib/assets/toy13.png",
    price: "120",
  ),
  Product(
    id: "14",
    color: const Color(0xFF81bcdf),
    title: "Product #14",
    imagePath: "lib/assets/toy14.png",
    price: "120",
  ),
  Product(
    id: "15",
    color: const Color(0xFF81bcdf),
    title: "Product #15",
    imagePath: "lib/assets/toy15.png",
    price: "120",
  ),
  Product(
    id: "16",
    color: const Color(0xFF81bcdf),
    title: "Product #16",
    imagePath: "lib/assets/toy16.png",
    price: "120",
  ),
  Product(
    id: "17",
    color: const Color(0xFF81bcdf),
    title: "Product #17",
    imagePath: "lib/assets/toy17.png",
    price: "120",
  ),
  Product(
    id: "18",
    color: const Color(0xFF81bcdf),
    title: "Product #18",
    imagePath: "lib/assets/toy18.png",
    price: "120",
  ),
  Product(
    id: "19",
    color: const Color(0xFF81bcdf),
    title: "Product #19",
    imagePath: "lib/assets/toy19.png",
    price: "120",
  ),
  Product(
    id: "20",
    color: const Color(0xFF81bcdf),
    title: "Product #20",
    imagePath: "lib/assets/toy20.png",
    price: "120",
  ),
];
