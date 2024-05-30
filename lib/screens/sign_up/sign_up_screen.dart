import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_app_bar.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'register_notifier.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUpScreen> {
  late SignUpController _controller;

  @override
  void initState() {
    _controller = SignUpController(ref: ref);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final regProvider = ref.watch(registerNotifierProvider);
    //regProvider.
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppBar(text: 'SignUp'),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  //more login options message
                  Center(child: text14Normal(text: "Enter your details below & free sign up")),
                  SizedBox(
                    height: 50.h,
                  ),
                  //user name text box
                  appTextField(
                    text: "User name",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your user name",
                    func: (value) => ref.read(registerNotifierProvider.notifier).onUserNameChange(value),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //email text box
                  appTextField(
                    text: "Email",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your email address",
                    func: (value) => ref.read(registerNotifierProvider.notifier).onUserEmailChange(value),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //password text box
                  appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password",
                    obscureText: true,
                    func: (value) => ref.read(registerNotifierProvider.notifier).onUserPasswordChange(value),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  //password text box
                  appTextField(
                      text: "Confirm your password",
                      iconName: "assets/icons/lock.png",
                      hintText: "Confirm your password",
                      func: (value) => ref.read(registerNotifierProvider.notifier).onUserRePasswordChange(value),
                      obscureText: true),
                  SizedBox(
                    height: 20.h,
                  ),
                  //forgot text
                  Container(
                      margin: EdgeInsets.only(left: 25.w),
                      child: text14Normal(text: "By creating an account you are agreeing with our terms and conditions")),
                  SizedBox(
                    height: 100.h,
                  ),

                  Center(
                    child: appButton(
                      buttonText: "Register",
                      func: () => _controller.handleSignUp(),
                    ),
                  ),
                  //app register button

                  ElevatedButton(
                    onPressed: () {
                      ref.read(registerNotifierProvider.notifier).onUserNameChange('toyohide0530');
                      ref.read(registerNotifierProvider.notifier).onUserEmailChange('toyohide0530@test.com');
                      ref.read(registerNotifierProvider.notifier).onUserPasswordChange('password');
                      ref.read(registerNotifierProvider.notifier).onUserRePasswordChange('password');
                    },
                    child: Text('dummy'),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
