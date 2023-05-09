import 'package:flutter/material.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  List<String> imagePath = ["blackbag.jpeg", "cgbag.jpeg","pinkbag.jpeg"];

  List<String> categoryName = ["New Arrivals","Everyday Bags","In Trends"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 350),
        itemCount: 3,

          itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "images/${imagePath[index]}",
                  height: 350,
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  categoryName[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Shop Now >>")
              ],
            ),
            SizedBox(width: 30,),
          ],
        );
      }),
    );
  }
}
