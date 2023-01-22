import 'package:flutter/material.dart';
import 'package:project1/pages/paymet.dart';

class CartPage extends StatelessWidget {
  // Product? product;

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //int numOfItems = 1;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("My Cart"),
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
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Payment())),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.payment,
                        color: Colors.white,
                      ),
                      Text(
                        "Continue to Payment",
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
        // trailing: Row(
        //   //crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     const SizedBox(
        //       width: 48,
        //       height: 32,
        //       child: Icon(Icons.remove, color: Color(0xFF535353)),
        //       // child: OutlinedButton(
        //       //   style: ButtonStyle(
        //       //     shape: MaterialStateProperty.all(
        //       //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
        //       //   ),
        //       //   onPressed: () {},
        //       //   child: const Icon(Icons.remove, color: Color(0xFF535353)),
        //     ),

        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 10),
        //       child: Text(
        //         numOfItems.toString().padLeft(2, '0'),
        //         style: Theme.of(context).textTheme.headline6,
        //       ),
        //     ),

        //     //buildOutlinedButton(icon: Icons.add, press: () {}),
        //     const SizedBox(
        //       width: 20,
        //       height: 20,
        //       child: Icon(Icons.add, color: Color(0xFF535353)),
        //       // child: OutlinedButton(
        //       //   style: ButtonStyle(
        //       //     shape: MaterialStateProperty.all(
        //       //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
        //       //   ),
        //       //   onPressed: () {},
        //       //   child: const Icon(Icons.add, color: Color(0xFF535353)),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
