import 'package:get/get.dart';

import '../models/product_model.dart';

class CartController extends GetxController {
  final _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Product Added",
      "You have added ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 5),
    );
  }
}
