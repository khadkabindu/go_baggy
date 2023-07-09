import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
        return ReviewCard();
      }),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow[800],
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow[800],
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow[800],
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow[800],
                ),
                Icon(
                  Icons.star_rate_rounded,
                  color: Colors.yellow[800],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Awesome Quality!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 200,
              child: Text(
                  "It's the best of best.Thankyou for the amazing bag.I love it so muchhh"),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/betty.jpg"),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sabi Shiwakoti",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Grafiti Artist"),
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
