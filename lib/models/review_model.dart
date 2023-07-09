class Review{
  final String reviewTitle;
  final String reviewMessage;
  final String userImagePath;
  final String username;
  final String userProfession;

  const Review({ required this.reviewTitle, required this.reviewMessage, required this.userImagePath, required this.username, required this.userProfession});

  static const List<Review> reviews = [

    Review(reviewTitle:"Awesome Quality", reviewMessage:"The product is great", userImagePath: "images/betty.jpg", username: "Sabi Shiwakoti", userProfession:"Graffiti Artist"),
    Review(reviewTitle:"Awesome Quality", reviewMessage:"The product is great", userImagePath: "images/neutral.png", username: "Sabi Shiwakoti", userProfession:"Graffiti Artist"),
    Review(reviewTitle:"Awesome Quality", reviewMessage:"The product is great", userImagePath: "images/neutral.png", username: "Sabi Shiwakoti", userProfession:"Graffiti Artist"),


  ];
}
