import 'package:flutter/material.dart';
import 'package:test_restfulapi_riverpod_youtube/widgets/text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/reading.png'),
                    SizedBox(height: 15),
                    text24Normal(text: 'page 1'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
