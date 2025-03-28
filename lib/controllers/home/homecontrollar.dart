import 'package:ecommerce_app/controllers/buttomnavbar.dart/navgation_controllar.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/data/data_sources/remote/category_data.dart';
import 'package:ecommerce_app/data/data_sources/remote/home_data.dart';
import 'package:ecommerce_app/data/models/categoris_model.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:get/get.dart';

abstract class Homecontrollar extends GetxController {
  GoToprofile();
   GoTomyorder();
  GotoPrudact();
  getdata();
}

class HomecontrollarImp extends Homecontrollar {
  StatusRequest statusRequest = StatusRequest.none;
  List<ProductModel> products = [];
  List<ProductModel> filteredProducts = [];
  List<CategorisModel> categories = [];

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    update();
    ProductData productData = ProductData();
    final result = await productData.getdata();
    if (result is StatusRequest) {
    } else {
      for (var i in result) {
        products.add(ProductModel.fromJson(i));
      }
      filteredProducts =
          products; // Initialize filteredProducts with all products
    }

    CategoryData categoryData = CategoryData();
    final categoryResult = await categoryData.getdata();
    if (categoryResult is StatusRequest) {
    } else {
      for (var i in categoryResult) {
        categories.add(CategorisModel(name: i));
      }
    }
    print('--------------------');
    print(categories);

    statusRequest = StatusRequest.success;
    update();
  }

  void filterProducts(String query) {
    if (query.isEmpty) {
      filteredProducts = products;
    } else {
      filteredProducts = products
          .where((product) =>
              product.category.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    update();
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  @override
  GotoPrudact() {
    Get.find<NavgationControllar>().chingIndex(2);
    Get.toNamed(Approutes.navgtionbar);
  }
  
  @override
  GoToprofile() {
     Get.find<NavgationControllar>().chingIndex(3);
    Get.toNamed(Approutes.navgtionbar);
  }
  
  @override
  GoTomyorder() {
    Get.toNamed(Approutes.myordar);
  }
}
