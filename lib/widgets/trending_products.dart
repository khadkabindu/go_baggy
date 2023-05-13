import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_baggy/controllers/cart_controller.dart';
import 'package:go_baggy/widgets/product_details.dart';

import '../models/product_model.dart';

class TrendingProduct extends StatefulWidget {
  const TrendingProduct({Key? key}) : super(key: key);

  @override
  State<TrendingProduct> createState() => _TrendingProductState();
}

class _TrendingProductState extends State<TrendingProduct> {
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: Product.products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductDetails()));
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        color: const Color(0xfff1f1f1),
                        child: Image.asset(
                          Product.products[index].imageUrl,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(Product.products[index].name),
                    Text("\$ ${Product.products[index].price}.00"),
                    GestureDetector(
                      onTap: () {
                        cartController.addProduct(Product.products[index]);
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                        alignment: Alignment.center,
                        color: Colors.black,
                        child: const Text(
                          "Add To Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
              ],
            );
          }),
    );
  }
}
