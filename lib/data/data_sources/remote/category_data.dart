import 'package:ecommerce_app/core/constant/api_endpoints.dart';
import 'package:ecommerce_app/core/utils/classes/api.dart';

class CategoryData {
  getdata() async {
    Api api = Api();
    final result = await api.getdata(ApiEndpoints.category);
    return result.fold((l) => l, (r) => r);
  }
}