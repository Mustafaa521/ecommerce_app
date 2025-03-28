import 'package:ecommerce_app/controllers/buttomnavbar.dart/navgation_controllar.dart';
import 'package:ecommerce_app/view/screens/cartpage.dart';
import 'package:ecommerce_app/view/screens/home.dart';
import 'package:ecommerce_app/view/screens/profilescreen.dart';
import 'package:ecommerce_app/view/screens/prudacts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class NavgetionBarPagaes extends StatelessWidget {
  NavgationControllar navgationControllar = Get.put(NavgationControllar());
  NavgetionBarPagaes({super.key});
  final screen = [
    const Home(),
     CartPage(),
    Prudacts(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navgationControllar.selectedIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(79, 105, 104, 104),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            navgationControllar.chingIndex(index);
          },
          currentIndex: navgationControllar.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart),
                label: 'Cart',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: 'prudacts',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
                backgroundColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
