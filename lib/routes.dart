import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screens/Login.dart';
import 'package:ecommerce_app/view/screens/cartpage.dart';
import 'package:ecommerce_app/view/screens/checkout.dart';
import 'package:ecommerce_app/view/screens/home.dart';
import 'package:ecommerce_app/view/screens/navgetion_bar_pagaes.dart';
import 'package:ecommerce_app/view/screens/onbording_screen.dart';
import 'package:ecommerce_app/view/screens/prudacts.dart';
import 'package:ecommerce_app/view/screens/splash_screen.dart';
import 'package:ecommerce_app/view/screens/success.dart';
import 'package:ecommerce_app/view/widgets/profile_widget/screens/my_orders.dart';
import 'package:get/get.dart';

final List<GetPage> routes = [
  GetPage(
    name: Approutes.onborning,
    page: () => OnbordingScreen(),
  ),
  GetPage(
    name: Approutes.Login,
    page: () => Login(),
  ),
  GetPage(
    name: Approutes.home,
    page: () => Home(),
  ),
  GetPage(
    name: Approutes.card,
    page: () => CartPage(),
  ),
  GetPage(
    name: Approutes.checkout,
    page: () => Checkout(),
  ),
  GetPage(
    name: Approutes.success,
    page: () => Success(),
  ),
  GetPage(
    name: Approutes.navgtionbar,
    page: () => NavgetionBarPagaes(),
  ),
  GetPage(
    name: Approutes.prudact,
    page: () => Prudacts(),
  ),
  GetPage(
    name: Approutes.splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: Approutes.myordar,
    page: () => MyOrdersPage(),
  ),
];
