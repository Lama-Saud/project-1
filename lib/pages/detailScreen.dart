import 'package:flutter/material.dart';

import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Colors.orange,
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.32),
                padding: EdgeInsets.only(top: size.height * 0.15, left: 20, right: 20),
                height: 550.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    //ColorAndSize(product: product),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: const [
                    //           Text('Color'),
                    //           // Row(
                    //           //   children: [
                    //           //     ColorDot(color: const Color(0xFF356C95), isSelected: true),
                    //           //     ColorDot(color: const Color(0xFFF8C078)),
                    //           //     ColorDot(color: const Color(0xFFA29B9B)),
                    //           //   ],
                    //           // ),
                    //         ],
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: RichText(
                    //         text: const TextSpan(
                    //           style: TextStyle(color: Color(0xFF535353)),
                    //           children: [
                    //             TextSpan(text: 'Size\n'),
                    //             // TextSpan(
                    //             //   text: '${product.size!} cm',
                    //             //   style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                    //             // ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 20 / 2),
                    //Description(product: product),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(product.desc, style: const TextStyle(height: 1.5)),
                    ),
                    const SizedBox(height: 10 / 2),
                    //CounterWithFavBtn(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //
                        const CartCounter(),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6.0),
                              width: 32.0,
                              height: 32.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFF6464),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.favorite,
                                size: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(6.0),
                              width: 32.0,
                              height: 32.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFF6464),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20 / 2),
                    //AddToCart(product: product),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 58,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateColor.resolveWith((states) => product.color),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
                                ),
                                child: Text(
                                  'buy now'.toUpperCase(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //ProductTitleWithImage(product: product),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kids Toy',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(text: 'Price\n'),
                              TextSpan(
                                text: '\$${product.price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                            child: Hero(
                                tag: product.id,
                                child: Image.asset(
                                  product.imagePath,
                                  fit: BoxFit.fill,
                                ))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
        // icon: Icon.asset(
        //   'assets/icons/back.svg',
        //   color: Colors.white,
        // ),
      ),
      actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: SvgPicture.asset(
        //         'assets/icons/search.svg',
        //       )),
        IconButton(
          onPressed: () {},
          // icon: SvgPicture.asset(
          //   'assets/icons/cart.svg',
          // ),
          icon: const Icon(Icons.shopping_bag_outlined),
        ),
        IconButton(
          onPressed: () {},
          // icon: SvgPicture.asset(
          //   'assets/icons/cart.svg',
          // ),
          icon: const Icon(Icons.favorite),
        ),

        const SizedBox(width: 20),
      ],
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  Widget buildOutlinedButton({IconData? icon, Function()? press}) {
    return SizedBox(
      width: 48,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0))),
        ),
        onPressed: press,
        child: Icon(icon, color: const Color(0xFF535353)),
      ),
    );
  }
}
