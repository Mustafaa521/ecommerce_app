import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/data/data_sources/remote/product_by_category_data.dart';
import 'package:ecommerce_app/data/models/prudact_model.dart';
import 'package:get/get.dart';

class CategoryControler extends GetxController {
  List<ProductModel> products = [];
  StatusRequest statusRequest = StatusRequest.none;
  late String categoryName;

  @override
  void onInit() {
    // TODO: implement onInit

    categoryName = Get.arguments['categoryName'];
    print(categoryName);
    getData();
    super.onInit();
  }

  void getData() async {
    statusRequest = StatusRequest.loading;
    update();
    ProductByCategoryData productData = ProductByCategoryData();
    final result = await productData.getdata(categoryName);
    if (result is StatusRequest) {
    } else {
      for (var i in result) {
        products.add(ProductModel.fromJson(i));
      }
    }
    statusRequest = StatusRequest.success;
    update();
  }
}
