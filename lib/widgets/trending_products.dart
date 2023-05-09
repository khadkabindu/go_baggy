
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class TrendingProduct extends StatefulWidget {
  const TrendingProduct({Key? key}) : super(key: key);

  @override
  State<TrendingProduct> createState() => _TrendingProductState();
}

class _TrendingProductState extends State<TrendingProduct> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,

        itemCount: Product.products.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
        return Row(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: const Color(0xfff1f1f1),
                  child:Image.asset(Product.products[index].imageUrl,height: 100,),
                ),
                 Text(Product.products[index].name),
                 Text("\$ ${Product.products[index].price}.00"),
               GestureDetector(
                 onTap: (){},
                 child: Container(
                   height: 40,
                   width: 200,
                   alignment: Alignment.center,
                   color: Colors.black,
                   child: const Text("Add To Cart", style:  TextStyle(color: Colors.white),),
                 ),
               ),
              ],
            ),
            SizedBox(width: 20,),
          ],
        );
      }),
    );
  }
}
