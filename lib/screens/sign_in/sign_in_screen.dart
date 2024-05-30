import 'package:flutter/material.dart';
import '../../widgets/text_widget.dart';

import '../../widgets/custom_app_bar.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(text: 'LOGIN'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            thirdPartyLogin(),
            const SizedBox(height: 20),
            Center(child: text14Normal(text: 'login')),
            const SizedBox(height: 20),
            appTextField(text: 'email', iconName: 'assets/icons/user.png', hintText: 'input email'),
            const SizedBox(height: 20),
            appTextField(
              text: 'password',
              iconName: 'assets/icons/lock.png',
              hintText: 'input password',
//              obscureText: true,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: textUnderline(text: 'forgot password?'),
            ),
          ],
        ),
      ),
    );
  }
}
