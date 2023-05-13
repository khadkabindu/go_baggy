import 'package:flutter/material.dart';
import 'package:go_baggy/widgets/product_details.dart';

import '../models/product_model.dart';

class CuratedPicks extends StatefulWidget {
  const CuratedPicks({Key? key}) : super(key: key);

  @override
  State<CuratedPicks> createState() => _CuratedPicksState();
}

class _CuratedPicksState extends State<CuratedPicks> {
  List <String> imagePath = [""];
  List<String> price = [];
  List<String> name = [];
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
