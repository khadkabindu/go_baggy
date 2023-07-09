import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          children: [
            Image.asset("images/brown_box.png",height: 200,),
            Column(
              children: [
                Text("Price"),
                Text("\$49.00"),
              ],
            ),
            Column(
              children: [
                Text("Quantity"),
                Text("1"),
              ],
            ),
            Column(
              children: [
                Text("Sub Total"),
                Text("\$51.00"),
              ],
            )
          ],
        ),

      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Your Cart"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
