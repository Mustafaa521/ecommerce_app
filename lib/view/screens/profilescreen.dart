import 'dart:io';
import 'package:ecommerce_app/controllers/Profile/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/view/widgets/profile_widget/screens/billing_profile.dart';
import 'package:ecommerce_app/view/widgets/profile_widget/screens/edit_provile.dart';
import 'package:ecommerce_app/view/widgets/profile_widget/screens/faq_page.dart';
import 'package:ecommerce_app/view/widgets/profile_widget/screens/my_orders.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() {
              if (userController.user.isEmpty) {
                return Center(child: CircularProgressIndicator());
              } else {
                return Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Obx(() {
                            return CircleAvatar(
                              radius: 40,
                              backgroundImage: userController
                                      .profileImage.value.isEmpty
                                  ? AssetImage('assets/images/logo.png')
                                  : FileImage(
                                      File(userController.profileImage.value)),
                            );
                          }),
                          Positioned(
                            bottom: -10,
                            right: -14,
                            child: IconButton(
                              icon: Icon(Icons.camera_alt, color: Colors.grey),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => BottomSheet(
                                    onClosing: () {},
                                    builder: (context) => Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.camera),
                                          title: Text('Camera'),
                                          onTap: () {
                                            userController
                                                .pickImage(ImageSource.camera);
                                            Navigator.pop(context);
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.photo_album),
                                          title: Text('Gallery'),
                                          onTap: () {
                                            userController
                                                .pickImage(ImageSource.gallery);
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, ${userController.user['name']['firstname']} ${userController.user['name']['lastname']}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Welcome to Nilkanth Medical Store',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
            }),
            Divider(),
            ListTile(
              leading: Icon(Icons.edit, color: Colors.blue),
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Get.to(EditProfilePage());
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.blue),
              title: Text('My orders'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Get.to(MyOrdersPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt, color: Colors.blue),
              title: Text('Billing'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Get.to(BillingPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.blue),
              title: Text('Faq'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Get.to(FaqPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
