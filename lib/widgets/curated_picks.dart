import 'package:flutter/material.dart';
import 'package:go_baggy/widgets/product_details.dart';

import '../models/product_model.dart';

class CuratedPicks extends StatefulWidget {
  const CuratedPicks({Key? key}) : super(key: key);

  @override
  State<CuratedPicks> createState() => _CuratedPicksState();
}

class _CuratedPicksState extends State<CuratedPicks> {
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

              ],
            );
          },),
    );
  }
}
