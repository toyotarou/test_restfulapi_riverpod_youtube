import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'register_notifier.dart';

import '../../widgets/popup_messages.dart';

// import 'package:ulearning_app/common/global_loader/global_loader.dart';
// import 'package:ulearning_app/common/widgets/popup_messages.dart';
// import 'package:ulearning_app/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  final WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;
    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo(msg: "Your name is empty");
      return;
    }

    if (state.userName.length < 6 || name.length < 6) {
      toastInfo(msg: "Your name is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo(msg: "Your email is empty");
      return;
    }
    if ((state.password.isEmpty || state.rePassword.isEmpty) || password.isEmpty || rePassword.isEmpty) {
      toastInfo(msg: "Your password is empty");
      return;
    }

    // //show the loading icon
    // ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    //
    //

    var context = Navigator.of(ref.context);
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      if (kDebugMode) {
        print(credential);

        /*

        I/flutter ( 8950): UserCredential(additionalUserInfo: AdditionalUserInfo(isNewUser: true, profile: {}, providerId: null, username: null, authorizationCode: null), credential: null, user: User(displayName: null, email: toyohide0530@test.com, isEmailVerified: false, isAnonymous: false, metadata: UserMetadata(creationTime: 2024-05-30 05:13:21.233Z, lastSignInTime: 2024-05-30 05:13:21.233Z), phoneNumber: null, photoURL: null, providerData, [UserInfo(displayName: null, email: toyohide0530@test.com, phoneNumber: null, photoURL: null, providerId: password, uid: toyohide0530@test.com)], refreshToken: null, tenantId: null, uid: KogyE4ZOznYQXYevMI0WM45raoH3))

        */
      }

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        //get server photo url
        //set user photo url
        toastInfo(msg: "Asn email has been to verify your account. Please open that email and confirm your identity");
        context.pop();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    // //show the register page
    // ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
    //
    //
  }
}
