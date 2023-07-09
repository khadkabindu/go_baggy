import 'package:flutter/material.dart';
import 'package:go_baggy/widgets/curated_picks.dart';
import 'package:go_baggy/widgets/footer.dart';
import 'package:go_baggy/widgets/reviews.dart';
import 'package:go_baggy/widgets/top_brands.dart';
import 'package:go_baggy/widgets/top_categories.dart';
import 'package:go_baggy/widgets/trending_products.dart';
import 'package:input_history_text_field/input_history_text_field.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'SHOP',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'NEW ARRIVALS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'ABOUT',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 300,
                          ),
                          Text(
                            'GO BAGGY',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(
                            width: 350,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: InputHistoryTextField(
                                      historyKey: "02",
                                      minLines: 2,
                                      maxLines: 10,
                                      limit: 8,
                                      enableHistory: true,
                                      hasFocusExpand: true,
                                      showHistoryIcon: true,
                                      showDeleteIcon: true,
                                      historyIcon: Icons.add,
                                      deleteIcon: Icons.delete,
                                      enableOpacityGradient: false,
                                      decoration: const InputDecoration(hintText: 'Search'),
                                      listRowDecoration: const BoxDecoration(
                                        border: Border(
                                          left: BorderSide(color: Colors.red, width: 3),
                                        ),
                                      ),
                                      listDecoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(4),
                                            bottomRight: Radius.circular(4)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0, 3)),
                                        ],
                                      ),
                                      historyIconTheme: const IconTheme(
                                        data: IconThemeData(color: Colors.red, size: 12),
                                        child: Icon(Icons.add),
                                      ),
                                      deleteIconTheme: const IconTheme(
                                        data: IconThemeData(color: Colors.blue, size: 12),
                                        child: Icon(Icons.remove_circle),
                                      ),
                                      listOffset: const Offset(0, 5),
                                      listTextStyle: const TextStyle(fontSize: 30),
                                      historyListItemLayoutBuilder: (controller, value, index) {
                                        return InkWell(
                                          onTap: () => controller.select(value.text),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                    margin: const EdgeInsets.only(left: 10.0),
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                        left: BorderSide(
                                                          width: 5.0,
                                                          color: index % 2 == 0
                                                              ? Colors.red
                                                              : Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          value.textToSingleLine,
                                                          overflow: TextOverflow.ellipsis,
                                                          style:
                                                          TextStyle(fontWeight: FontWeight.bold),
                                                        ),
                                                        Text(
                                                          value.createdTimeLabel,
                                                          overflow: TextOverflow.ellipsis,
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Theme.of(context).disabledColor),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.close,
                                                  size: 16,
                                                  color: Theme.of(context).disabledColor,
                                                ),
                                                onPressed: () {
                                                  controller.remove(value);
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_outline),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_cart_outlined),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Color(0xfff9f4ec),
                  width: MediaQuery.of(context).size.width,
                  height: 680,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 190,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get affordable",
                              style: TextStyle(fontSize: 60),
                            ),
                            Text(
                              "chic bags now",
                              style: TextStyle(fontSize: 60),
                            ),
                            Text(
                              "Get unstoppable looks at an affordable price",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: 120,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Shop Now",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 350,
                            width: 500,
                            color: Colors.white,
                            child: Image.asset("images/baggygirl.png"),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Positioned(child: Container(height: 100, color:Colors.white ,),),
              ],
            ),
            Container(
              height: 600,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TopCategories(),
                ],
              ),
            ),
            Container(
              height: 450,
              color: Colors.white,
              child: Column(
                children: const [
                  Text(
                    "What's Trending Now",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TrendingProduct(),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Brands",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 30,
                ),
                Container(
                  height: 190,
                  color: const Color(0xfff9f3eb),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      TopBrands(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: const [
                      Text(
                        "Curated Picks",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CuratedPicks(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Reviews",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(right: 170, left: 170),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xfff9f3eb),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: const Icon(Icons.arrow_back),
                              height: 45,
                              width: 45,
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            const Reviews(),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: const Icon(Icons.arrow_forward),
                              height: 45,
                              width: 45,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
