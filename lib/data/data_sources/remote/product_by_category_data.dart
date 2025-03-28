import 'package:ecommerce_app/core/constant/api_endpoints.dart';
import 'package:ecommerce_app/core/utils/classes/api.dart';

class ProductByCategoryData {

    getdata(String categoryName) async {
    Api api = Api();
    final result = await api.getdata(ApiEndpoints.prudact+ '/category/' + categoryName);
    return result.fold((l) => l, (r) => r);
  }
}