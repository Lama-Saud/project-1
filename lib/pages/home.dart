import 'package:flutter/material.dart';
import 'package:project1/models/product.dart';
import 'package:project1/pages/cart.dart';
import 'package:project1/pages/detailScreen.dart';
import 'package:project1/pages/profile.dart';
import 'package:project1/pages/wishlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_outlined, size: 20, color: Colors.grey),
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WishList())),
                child: const Icon(Icons.favorite, color: Colors.grey),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile())),
                child: const Icon(Icons.settings, color: Colors.grey),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartPage())),
                child: const Icon(Icons.shopping_bag_outlined, color: Colors.grey),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 18),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 10,
            crossAxisSpacing: 30,
          ),
          itemBuilder: (context, index) => ItemCard(
            product: products[index],
            press: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: products[index],
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: product!.color,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Hero(tag: product!.id, child: Image.asset(product!.imagePath)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              product!.title,
              style: const TextStyle(color: Color(0xFFACACAC)),
            ),
          ),
          Text(
            '\$ ${product!.price}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
