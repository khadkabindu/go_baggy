import 'package:flutter/material.dart';

class TopBrands extends StatefulWidget {
  const TopBrands({Key? key}) : super(key: key);

  @override
  State<TopBrands> createState() => _TopBrandsState();
}

class _TopBrandsState extends State<TopBrands> {
  List<String> image = [
    "images/Gucci-Logo.png",
    "images/marieclaire.png",
    "images/elle.png",
    "images/saintlaurent.png",
    "images/instyle.png",
    "images/meghanvuitton.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 170, left: 170),
        child: ListView.builder(
            itemCount: image.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  SizedBox(
                    height: 90,
                    width: 140,
                    child: Image.asset(
                      image[index],
                    ),
                  ),
                  const SizedBox(width: 50,),
                ],
              );
            }),
      ),
    );
  }
}
