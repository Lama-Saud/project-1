import 'package:flutter/material.dart';
import 'package:project1/pages/home.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishlist"),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CartItem(
              imagePath: 'lib/assets/toy1.png',
              subtitle: 'Description',
              title: 'Product #1',
            ),
            CartItem(
              imagePath: 'lib/assets/toy2.png',
              subtitle: 'Description',
              title: 'Product #2',
            ),
            CartItem(
              imagePath: 'lib/assets/toy4.png',
              subtitle: 'Description',
              title: 'Product #4',
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 32,
                top: 16,
              ),
              child: ElevatedButton(
                // ignore: prefer_const_constructors
                style: ElevatedButton.styleFrom(
                  //shadowColor: shadowColor,
                  backgroundColor: Colors.black,
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.payment,
                        color: Colors.white,
                      ),
                      Text(
                        "Continue Shopping",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  String imagePath;
  String title;
  String subtitle;

  CartItem({Key? key, required this.imagePath, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        leading: Image.asset(imagePath),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
