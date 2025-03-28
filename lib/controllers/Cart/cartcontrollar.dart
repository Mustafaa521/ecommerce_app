import 'package:ecommerce_app/controllers/buttomnavbar.dart/navgation_controllar.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';

class QuantityController extends GetxController {
  var quantities = <ProductModel, int>{}.obs;
  var orderTotal = 0.0.obs;
  var itemsDiscount = 0.0.obs;
  var couponDiscount = 0.0.obs;
  var shipping = 0.0.obs;
  var total = 0.0.obs;
  var cartItems = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    
  }

  void increment(ProductModel product) {
    if (quantities.containsKey(product)) {
      quantities[product] = quantities[product]! + 1;
    } else {
      quantities[product] = 1;
    }
    updatePrices();
  }

  void decrement(ProductModel product) {
    if (quantities.containsKey(product) && quantities[product]! > 1) {
      quantities[product] = quantities[product]! - 1;
    }
    updatePrices();
  }

  void updatePrices() {
    double totalOrder = 0.0;
    quantities.forEach((product, quantity) {
      totalOrder += product.price * quantity;
    });
    orderTotal.value = totalOrder;
    total.value = orderTotal.value -
        itemsDiscount.value -
        couponDiscount.value +
        shipping.value;
  }

  void addToCart(ProductModel product) {
    cartItems.add(product);
    quantities[product] = 1;
    print("Product added to cart: ${product.title}");
    updatePrices();
  }

  void GoToCheckout() {
    Get.toNamed(Approutes.checkout);
    print("Navigating to checkout page");
  }

  void GoToProducts() {
    Get.find<NavgationControllar>().chingIndex(2);
    Get.toNamed(Approutes.navgtionbar);
  }
}
