
import 'package:flutter/material.dart';

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
                              SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_bag_outlined),
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
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 450,
                        child: Column(
                          children: [
                            Image.asset(
                              "images/yellow.jpg",
                              height: 350,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "New Arrivals",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Shop Now >>")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 450,
                        child: Column(
                          children: [
                            Image.asset("images/blackbag.jpeg", height: 350,),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Everyday Bags",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Shop Now >>")

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 450,
                        child: Column(
                          children: [
                            Image.asset("images/pinkbag.jpeg", height: 350,),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "In Trends",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Shop Now >>")
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
