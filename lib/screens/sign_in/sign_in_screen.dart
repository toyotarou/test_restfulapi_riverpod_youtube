import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sign_in_notifier.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

import '../../widgets/custom_app_bar.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(text: 'LOGIN'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartyLogin(),
              const SizedBox(height: 20),
              Center(child: text14Normal(text: 'login')),
              const SizedBox(height: 20),
              appTextField(
                text: 'email',
                iconName: 'assets/icons/user.png',
                hintText: 'input email',
                func: (value) => ref.read(signInNotifierProvider.notifier).onUserEmailChange(value),
              ),
              const SizedBox(height: 20),
              appTextField(
                text: 'password',
                iconName: 'assets/icons/lock.png',
                hintText: 'input password',
                //              obscureText: true,
                func: (value) => ref.read(signInNotifierProvider.notifier).onUserPasswordChange(value),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: textUnderline(text: 'forgot password?'),
              ),
              const SizedBox(height: 100),
              Container(
                alignment: Alignment.center,
                child: appButton(
                  buttonText: 'LOGIN',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: appButton(
                  buttonText: 'REGIST',
                  color: Colors.white,
                  borderColor: Colors.indigo,
                  func: () => Navigator.pushNamed(context, "/register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
