import 'package:flutter/material.dart';
import 'package:go_baggy/widgets/color_palette.dart';
import 'package:go_baggy/widgets/product_details.dart';

import '../models/product_model.dart';

class CuratedPicks extends StatefulWidget {
  const CuratedPicks({Key? key}) : super(key: key);

  @override
  State<CuratedPicks> createState() => _CuratedPicksState();
}

class _CuratedPicksState extends State<CuratedPicks> {
  List<String> imagePath = [
    "images/belted.png",
    "images/neutral.png",
    "images/dolcegabbana.png",
    "images/purple.png",
    "images/lv.png",
    // "images/michaelkors.png",
    // "images/sicily.png",
    // "images/whiteyyy.png",
    // "images/designer.png",
    // "images/prada.png",
    // "images/dooneybourke.png",
  ];
  List<String> price = ["49", "39", "89", "66", "79"];
  List<String> name = [
    "Belted Bag",
    "Designer Peach",
    "Dolce Gabbana",
    "Dooney Bourks",
    "Loui Vuitton"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: imagePath.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          imagePath[index],
                          height: 100,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      name[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\$ ${price[index]}.00",
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
