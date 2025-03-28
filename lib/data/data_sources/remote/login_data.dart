import 'package:ecommerce_app/core/constant/api_endpoints.dart';
import 'package:ecommerce_app/core/utils/classes/api.dart';

class LoginData {
  post(String username, String password) async {
    Api api = Api();

    final response = await api
        .post(ApiEndpoints.login, {'username': username, 'password': password});

    return response.fold((l) => l, (r) => r);
  }
}
 