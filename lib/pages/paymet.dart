import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 32.0, top: 64),
                child: Text(
                  "Payment",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset("lib/assets/bankcard.png"),
              ),
            ],
          ),
          // const Text(
          //   "Payment",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          // // const SizedBox(
          // //   height: 20,
          // // ),
          // SizedBox(
          //   height: 400,
          //   width: 400,
          //   child: Image.asset("lib/assets/bankcard.png"),
          // ),
          //-------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 16),
            child: ElevatedButton(
              // ignore: prefer_const_constructors
              style: ElevatedButton.styleFrom(
                //shadowColor: shadowColor,
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Text(
                  "Cash on Delivery",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 16),
            child: ElevatedButton(
              // ignore: prefer_const_constructors
              style: ElevatedButton.styleFrom(
                //shadowColor: shadowColor,
                backgroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Text(
                  "Pay with Credit Card",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
