import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  var user = {}.obs;
  var profileImage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  void fetchUserData() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/users/1'));

    if (response.statusCode == 200) {
      user.value = json.decode(response.body);
    } else {
      throw Exception('Failed to load user data');
    }
  }

  void updateUserData(Map<String, dynamic> updatedData) {
    user.value = updatedData;
  }

  Future<void> pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      profileImage.value = pickedFile.path;
    }
  }
}