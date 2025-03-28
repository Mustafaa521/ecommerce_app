import 'package:ecommerce_app/controllers/Auth/logincontrollar.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/utils/enums/status_request.dart';
import 'package:ecommerce_app/core/utils/functions/validators.dart';
import 'package:ecommerce_app/view/widgets/login/Auth/coustmButtenathe.dart';
import 'package:ecommerce_app/view/widgets/login/Auth/coustmtextbodyauth.dart';
import 'package:ecommerce_app/view/widgets/login/Auth/coustmtextformauth.dart';
import 'package:ecommerce_app/view/widgets/login/Auth/coustmtexttitleauth.dart';
import 'package:ecommerce_app/view/widgets/login/Auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginControllerImp> {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.background,
          elevation: 0.0,
          title:
              Text('Log in', style: Theme.of(context).textTheme.headlineLarge),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: ListView(
            children: [
              const Logoauth(),
              const Coustmtexttitleauth(
                text: 'Welcome Back',
              ),
              const SizedBox(
                height: 20,
              ),
              const Coustmtextbodyauth(
                text: 'Please enter your credentials to log in to your account',
              ),
              const SizedBox(
                height: 65,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    Coustmtextformauth(
                      hinttext: 'Username',
                      icondata: Icons.email_outlined,
                      labltext: 'Username',
                      type: ValidatorType.name,
                      controller: controller.emailController,
                    ),
                    Coustmtextformauth(
                      hinttext: 'Enter Your pasowrd',
                      icondata: Icons.lock_outline,
                      labltext: 'Pasowrd',
                      type: ValidatorType.password,
                      controller: controller.passwordController,
                    ),
                  ],
                ),
              ),
              // const Text(
              //   'forget passowrd',
              //   textAlign: TextAlign.right,
              // ),
              GetBuilder<LoginControllerImp>(builder: (controller) {
                return Coustmbuttenathe(
                  // loading: false,
                  text: controller.statusRequest == StatusRequest.loading
                      ? 'loading'
                      : 'login',
                  loading: controller.statusRequest == StatusRequest.loading,
                  onPressed: () {
                    controller.login();
                  },
                );
              }),
              const SizedBox(
                height: 5,
              ),
              // Coustmtextsigninorsignup(
              //   text: 'Don`t have an accaont ? ',
              //   text2: 'Sign up',
              //   onTap: () {
              //     controller.goToSignUp();
              //   },
              // ),
            ],
          ),
        ));
  }
}
